-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3307
-- Thời gian đã tạo: Th12 01, 2023 lúc 03:04 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cellphoneshopv0`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anh_dienthoai`
--

CREATE TABLE `anh_dienthoai` (
  `ma_anh` int(11) NOT NULL,
  `link_anh` varchar(200) NOT NULL,
  `ma_dienthoai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `anh_dienthoai`
--

INSERT INTO `anh_dienthoai` (`ma_anh`, `link_anh`, `ma_dienthoai`) VALUES
(1, 'iphone_15_128gb_|_chính_hãng_vn/a-1.jpg', 1),
(2, 'iphone_15_128gb_|_chính_hãng_vn/a-2.jpg', 1),
(3, 'iphone_15_128gb_|_chính_hãng_vn/a-3.jpg', 1),
(4, 'iphone_15_128gb_|_chính_hãng_vn/a-4.jpg', 1),
(5, 'iphone_15_128gb_|_chính_hãng_vn/a-5.jpg', 1),
(6, 'iphone_15_128gb_|_chính_hãng_vn/a-6.jpg', 1),
(7, 'iphone_15_128gb_|_chính_hãng_vn/a-7.jpg', 1),
(8, 'iphone_15_128gb_|_chính_hãng_vn/a-8.jpg', 1),
(9, 'iphone_15_128gb_|_chính_hãng_vn/a-9.jpg', 1),
(10, 'iphone_15_128gb_|_chính_hãng_vn/a-10.jpg', 1),
(11, 'iphone_15_128gb_|_chính_hãng_vn/a-11.jpg', 1),
(12, 'iphone_15_128gb_|_chính_hãng_vn/a-12.jpg', 1),
(13, 'iphone_15_128gb_|_chính_hãng_vn/a-13.jpg', 1),
(14, 'iphone_15_128gb_|_chính_hãng_vn/a-14.jpg', 1),
(15, 'iphone_15_128gb_|_chính_hãng_vn/a-15.jpg', 1),
(16, 'iphone_15_128gb_|_chính_hãng_vn/a-16.jpg', 1),
(17, 'iphone_15_128gb_|_chính_hãng_vn/a-17.jpg', 1),
(18, 'iphone_15_128gb_|_chính_hãng_vn/a-18.jpg', 1),
(19, 'iphone_15_128gb_|_chính_hãng_vn/a-19.jpg', 1),
(20, 'iphone_15_128gb_|_chính_hãng_vn/a-20.jpg', 1),
(21, 'iphone_15_128gb_|_chính_hãng_vn/a-21.jpg', 1),
(22, 'iphone_15_128gb_|_chính_hãng_vn/a-22.jpg', 1),
(23, 'iphone_15_128gb_|_chính_hãng_vn/a-23.jpg', 1),
(24, 'iphone_15_128gb_|_chính_hãng_vn/a-24.jpg', 1),
(25, 'iphone_15_128gb_|_chính_hãng_vn/a-25.jpg', 1),
(26, 'iphone_15_128gb_|_chính_hãng_vn/a-26.jpg', 1),
(27, 'iphone_15_128gb_|_chính_hãng_vn/a-27.jpg', 1),
(28, 'iphone_15_128gb_|_chính_hãng_vn/a-28.jpg', 1),
(29, 'iphone_15_128gb_|_chính_hãng_vn/a-29.jpg', 1),
(30, 'iphone_15_128gb_|_chính_hãng_vn/a-30.jpg', 1),
(31, 'iphone_15_128gb_|_chính_hãng_vn/a-31.jpg', 1),
(32, 'iphone_15_128gb_|_chính_hãng_vn/a-32.jpg', 1),
(33, 'iphone_15_128gb_|_chính_hãng_vn/a-33.jpg', 1),
(34, 'iphone_15_128gb_|_chính_hãng_vn/a-34.jpg', 1),
(35, 'iphone_15_128gb_|_chính_hãng_vn/a-35.jpg', 1),
(36, 'iphone_15_128gb_|_chính_hãng_vn/a-36.jpg', 1),
(37, 'iphone_15_128gb_|_chính_hãng_vn/a-37.jpg', 1),
(38, 'iphone_15_128gb_|_chính_hãng_vn/a-38.jpg', 1),
(39, 'iphone_14_pro_max_128gb_|_chính_hãng_vn/a-1.jpg', 2),
(40, 'iphone_14_pro_max_128gb_|_chính_hãng_vn/a-2.jpg', 2),
(41, 'iphone_14_pro_max_128gb_|_chính_hãng_vn/a-3.jpg', 2),
(42, 'iphone_14_pro_max_128gb_|_chính_hãng_vn/a-4.jpg', 2),
(43, 'iphone_14_pro_max_128gb_|_chính_hãng_vn/a-5.jpg', 2),
(44, 'iphone_14_pro_max_128gb_|_chính_hãng_vn/a-6.jpg', 2),
(45, 'iphone_14_pro_max_128gb_|_chính_hãng_vn/a-7.jpg', 2),
(46, 'iphone_14_pro_max_128gb_|_chính_hãng_vn/a-8.jpg', 2),
(47, 'iphone_14_pro_max_128gb_|_chính_hãng_vn/a-9.jpg', 2),
(48, 'iphone_14_pro_max_128gb_|_chính_hãng_vn/a-10.jpg', 2),
(49, 'iphone_14_pro_max_128gb_|_chính_hãng_vn/a-11.jpg', 2),
(50, 'iphone_14_pro_max_128gb_|_chính_hãng_vn/a-12.jpg', 2),
(51, 'iphone_14_pro_max_128gb_|_chính_hãng_vn/a-13.jpg', 2),
(52, 'iphone_14_pro_max_128gb_|_chính_hãng_vn/a-14.jpg', 2),
(53, 'iphone_14_pro_max_128gb_|_chính_hãng_vn/a-15.jpg', 2),
(54, 'iphone_14_pro_max_128gb_|_chính_hãng_vn/a-16.jpg', 2),
(55, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-1.jpg', 3),
(56, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-2.jpg', 3),
(57, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-3.jpg', 3),
(58, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-4.jpg', 3),
(59, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-5.jpg', 3),
(60, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-6.jpg', 3),
(61, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-7.jpg', 3),
(62, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-8.jpg', 3),
(63, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-9.jpg', 3),
(64, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-10.jpg', 3),
(65, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-11.jpg', 3),
(66, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-12.jpg', 3),
(67, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-13.jpg', 3),
(68, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-14.jpg', 3),
(69, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-15.jpg', 3),
(70, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-16.jpg', 3),
(71, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-17.jpg', 3),
(72, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-18.jpg', 3),
(73, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-19.jpg', 3),
(74, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-20.jpg', 3),
(75, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-21.jpg', 3),
(76, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-22.jpg', 3),
(77, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-23.jpg', 3),
(78, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-24.jpg', 3),
(79, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-25.jpg', 3),
(80, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-26.jpg', 3),
(81, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-27.jpg', 3),
(82, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-28.jpg', 3),
(83, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-29.jpg', 3),
(84, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-30.jpg', 3),
(85, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-31.jpg', 3),
(86, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-32.jpg', 3),
(87, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-33.jpg', 3),
(88, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-34.jpg', 3),
(89, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-35.jpg', 3),
(90, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-36.jpg', 3),
(91, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-37.jpg', 3),
(92, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-38.jpg', 3),
(93, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-39.jpg', 3),
(94, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-40.jpg', 3),
(95, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-41.jpg', 3),
(96, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-42.jpg', 3),
(97, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-43.jpg', 3),
(98, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-44.jpg', 3),
(99, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-45.jpg', 3),
(100, 'iphone_15_pro_max_256gb_|_chính_hãng_vn/a-46.jpg', 3),
(101, 'samsung_galaxy_s23_ultra_256gb-1.jpg', 4),
(102, 'samsung_galaxy_s23_ultra_256gb-2.jpg', 4),
(103, 'samsung_galaxy_s23_ultra_256gb-3.jpg', 4),
(104, 'samsung_galaxy_s23_ultra_256gb-4.jpg', 4),
(105, 'samsung_galaxy_s23_ultra_256gb-5.jpg', 4),
(106, 'samsung_galaxy_s23_ultra_256gb-6.jpg', 4),
(107, 'samsung_galaxy_s23_ultra_256gb-7.jpg', 4),
(108, 'samsung_galaxy_s23_ultra_256gb-8.jpg', 4),
(109, 'samsung_galaxy_s23_ultra_256gb-9.jpg', 4),
(110, 'samsung_galaxy_s23_ultra_256gb-10.jpg', 4),
(111, 'samsung_galaxy_s23_ultra_256gb-11.jpg', 4),
(112, 'samsung_galaxy_s23_ultra_256gb-12.jpg', 4),
(113, 'samsung_galaxy_s23_ultra_256gb-13.jpg', 4),
(114, 'samsung_galaxy_s23_ultra_256gb-14.jpg', 4),
(115, 'samsung_galaxy_s23_ultra_256gb-15.jpg', 4),
(116, 'samsung_galaxy_s23_ultra_256gb-16.jpg', 4),
(117, 'samsung_galaxy_s23_ultra_256gb-17.jpg', 4),
(118, 'samsung_galaxy_s23_ultra_256gb-18.jpg', 4),
(119, 'samsung_galaxy_s23_ultra_256gb-19.jpg', 4),
(120, 'samsung_galaxy_s23_ultra_256gb-20.jpg', 4),
(121, 'samsung_galaxy_s23_ultra_256gb-21.jpg', 4),
(122, 'samsung_galaxy_s23_ultra_256gb-22.jpg', 4),
(123, 'samsung_galaxy_s23_ultra_256gb-23.jpg', 4),
(124, 'samsung_galaxy_s23_ultra_256gb-24.jpg', 4),
(125, 'samsung_galaxy_s23_ultra_256gb-25.jpg', 4),
(126, 'samsung_galaxy_s23_ultra_256gb-26.jpg', 4),
(127, 'samsung_galaxy_s23_ultra_256gb-27.jpg', 4),
(128, 'samsung_galaxy_s23_ultra_256gb-28.jpg', 4),
(129, 'samsung_galaxy_s23_ultra_256gb-29.jpg', 4),
(130, 'samsung_galaxy_s23_ultra_256gb-30.jpg', 4),
(131, 'samsung_galaxy_s23_ultra_256gb-31.jpg', 4),
(132, 'samsung_galaxy_s23_ultra_256gb-32.jpg', 4),
(133, 'samsung_galaxy_s23_ultra_256gb-33.jpg', 4),
(134, 'samsung_galaxy_s23_ultra_256gb-34.jpg', 4),
(135, 'samsung_galaxy_s23_ultra_256gb-35.jpg', 4),
(136, 'samsung_galaxy_z_flip5_512gb-1.jpg', 5),
(137, 'samsung_galaxy_z_flip5_512gb-2.jpg', 5),
(138, 'samsung_galaxy_z_flip5_512gb-3.jpg', 5),
(139, 'samsung_galaxy_z_flip5_512gb-4.jpg', 5),
(140, 'samsung_galaxy_z_flip5_512gb-5.jpg', 5),
(141, 'samsung_galaxy_z_flip5_512gb-6.jpg', 5),
(142, 'samsung_galaxy_z_flip5_512gb-7.jpg', 5),
(143, 'samsung_galaxy_z_flip5_512gb-8.jpg', 5),
(144, 'samsung_galaxy_z_flip5_512gb-9.jpg', 5),
(145, 'samsung_galaxy_z_flip5_512gb-10.jpg', 5),
(146, 'samsung_galaxy_z_flip5_512gb-11.jpg', 5),
(147, 'samsung_galaxy_z_flip5_512gb-12.jpg', 5),
(148, 'samsung_galaxy_z_flip5_512gb-13.jpg', 5),
(149, 'samsung_galaxy_z_flip5_512gb-14.jpg', 5),
(150, 'samsung_galaxy_z_flip5_512gb-15.jpg', 5),
(151, 'samsung_galaxy_z_flip5_512gb-16.jpg', 5),
(152, 'samsung_galaxy_z_flip5_512gb-17.jpg', 5),
(153, 'samsung_galaxy_z_flip5_512gb-18.jpg', 5),
(154, 'samsung_galaxy_z_flip5_512gb-19.jpg', 5),
(155, 'samsung_galaxy_z_flip5_512gb-20.jpg', 5),
(156, 'samsung_galaxy_z_flip5_512gb-21.jpg', 5),
(157, 'samsung_galaxy_z_flip5_512gb-22.jpg', 5),
(158, 'samsung_galaxy_z_flip5_512gb-23.jpg', 5),
(159, 'samsung_galaxy_z_flip5_512gb-24.jpg', 5),
(160, 'samsung_galaxy_z_flip5_512gb-25.jpg', 5),
(161, 'samsung_galaxy_z_flip5_512gb-26.jpg', 5),
(162, 'samsung_galaxy_z_flip5_512gb-27.jpg', 5),
(163, 'samsung_galaxy_z_flip5_512gb-28.jpg', 5),
(164, 'samsung_galaxy_z_flip5_512gb-29.jpg', 5),
(165, 'samsung_galaxy_z_flip5_512gb-30.jpg', 5),
(166, 'samsung_galaxy_z_flip5_512gb-31.jpg', 5),
(167, 'samsung_galaxy_z_flip5_512gb-32.jpg', 5),
(168, 'samsung_galaxy_z_flip5_512gb-33.jpg', 5),
(169, 'samsung_galaxy_z_flip5_512gb-34.jpg', 5),
(170, 'samsung_galaxy_z_flip5_512gb-35.jpg', 5),
(171, 'samsung_galaxy_z_flip5_512gb-36.jpg', 5),
(172, 'samsung_galaxy_z_flip5_512gb-37.jpg', 5),
(173, 'samsung_galaxy_z_flip5_512gb-38.jpg', 5),
(174, 'samsung_galaxy_z_flip5_512gb-39.jpg', 5),
(175, 'samsung_galaxy_z_flip5_512gb-40.jpg', 5),
(176, 'samsung_galaxy_z_flip5_512gb-41.jpg', 5),
(177, 'samsung_galaxy_z_flip5_512gb-42.jpg', 5),
(178, 'samsung_galaxy_s22_ultra_(12gb_-_256gb)-1.jpg', 6),
(179, 'samsung_galaxy_s22_ultra_(12gb_-_256gb)-2.jpg', 6),
(180, 'samsung_galaxy_s22_ultra_(12gb_-_256gb)-3.jpg', 6),
(181, 'samsung_galaxy_s22_ultra_(12gb_-_256gb)-4.jpg', 6),
(182, 'samsung_galaxy_s22_ultra_(12gb_-_256gb)-5.jpg', 6),
(183, 'samsung_galaxy_s22_ultra_(12gb_-_256gb)-6.jpg', 6),
(184, 'samsung_galaxy_s22_ultra_(12gb_-_256gb)-7.jpg', 6),
(185, 'samsung_galaxy_s22_ultra_(12gb_-_256gb)-8.jpg', 6),
(186, 'samsung_galaxy_s22_ultra_(12gb_-_256gb)-9.jpg', 6),
(187, 'samsung_galaxy_s22_ultra_(12gb_-_256gb)-10.jpg', 6),
(188, 'samsung_galaxy_s22_ultra_(12gb_-_256gb)-11.jpg', 6),
(189, 'samsung_galaxy_s22_ultra_(12gb_-_256gb)-12.jpg', 6),
(190, 'samsung_galaxy_s22_ultra_(12gb_-_256gb)-13.jpg', 6),
(191, 'samsung_galaxy_s22_ultra_(12gb_-_256gb)-14.jpg', 6),
(192, 'samsung_galaxy_s22_ultra_(12gb_-_256gb)-15.jpg', 6),
(193, 'samsung_galaxy_s22_ultra_(12gb_-_256gb)-16.jpg', 6),
(194, 'samsung_galaxy_s22_ultra_(12gb_-_256gb)-17.jpg', 6),
(195, 'samsung_galaxy_s22_ultra_(12gb_-_256gb)-18.jpg', 6),
(196, 'samsung_galaxy_s22_ultra_(12gb_-_256gb)-19.jpg', 6),
(197, 'samsung_galaxy_s22_ultra_(12gb_-_256gb)-20.jpg', 6),
(198, 'samsung_galaxy_s22_ultra_(12gb_-_256gb)-21.jpg', 6),
(199, 'samsung_galaxy_s22_ultra_(12gb_-_256gb)-22.jpg', 6),
(200, 'samsung_galaxy_s22_ultra_(12gb_-_256gb)-23.jpg', 6),
(201, 'samsung_galaxy_s22_ultra_(12gb_-_256gb)-24.jpg', 6),
(202, 'samsung_galaxy_s22_ultra_(12gb_-_256gb)-25.jpg', 6),
(203, 'samsung_galaxy_s22_ultra_(12gb_-_256gb)-26.jpg', 6),
(204, 'samsung_galaxy_s22_ultra_(12gb_-_256gb)-27.jpg', 6),
(205, 'samsung_galaxy_s22_ultra_(12gb_-_256gb)-28.jpg', 6),
(206, 'samsung_galaxy_s22_ultra_(12gb_-_256gb)-29.jpg', 6),
(207, 'samsung_galaxy_s22_ultra_(12gb_-_256gb)-30.jpg', 6),
(208, 'oppo_find_n3_flip_12gb_256gb-1.jpg', 7),
(209, 'oppo_find_n3_flip_12gb_256gb-2.jpg', 7),
(210, 'oppo_find_n3_flip_12gb_256gb-3.jpg', 7),
(211, 'oppo_find_n3_flip_12gb_256gb-4.jpg', 7),
(212, 'oppo_find_n3_flip_12gb_256gb-5.jpg', 7),
(213, 'oppo_find_n3_flip_12gb_256gb-6.jpg', 7),
(214, 'oppo_find_n3_flip_12gb_256gb-7.jpg', 7),
(215, 'oppo_find_n3_flip_12gb_256gb-8.jpg', 7),
(216, 'oppo_find_n3_flip_12gb_256gb-9.jpg', 7),
(217, 'oppo_find_n3_flip_12gb_256gb-10.jpg', 7),
(218, 'oppo_find_n3_flip_12gb_256gb-11.jpg', 7),
(219, 'oppo_find_n3_flip_12gb_256gb-12.jpg', 7),
(220, 'oppo_find_n3_flip_12gb_256gb-13.jpg', 7),
(221, 'oppo_find_n3_flip_12gb_256gb-14.jpg', 7),
(222, 'oppo_find_n3_flip_12gb_256gb-15.jpg', 7),
(223, 'oppo_find_n3_flip_12gb_256gb-16.jpg', 7),
(224, 'oppo_find_n3_flip_12gb_256gb-17.jpg', 7),
(225, 'oppo_find_n3_flip_12gb_256gb-18.jpg', 7),
(226, 'oppo_find_n3_flip_12gb_256gb-19.jpg', 7),
(227, 'oppo_find_n3_flip_12gb_256gb-20.jpg', 7),
(228, 'oppo_find_n3_flip_12gb_256gb-21.jpg', 7),
(229, 'oppo_find_n3_16gb_512gb-1.jpg', 8),
(230, 'oppo_find_n3_16gb_512gb-2.jpg', 8),
(231, 'oppo_find_n3_16gb_512gb-3.jpg', 8),
(232, 'oppo_find_n3_16gb_512gb-4.jpg', 8),
(233, 'oppo_find_n3_16gb_512gb-5.jpg', 8),
(234, 'oppo_find_n3_16gb_512gb-6.jpg', 8),
(235, 'oppo_find_n3_16gb_512gb-7.jpg', 8),
(236, 'oppo_find_n3_16gb_512gb-8.jpg', 8),
(237, 'oppo_find_n3_16gb_512gb-9.jpg', 8),
(238, 'oppo_find_n3_16gb_512gb-10.jpg', 8),
(239, 'oppo_find_n3_16gb_512gb-11.jpg', 8),
(240, 'oppo_find_n3_16gb_512gb-12.jpg', 8),
(241, 'oppo_find_n3_16gb_512gb-13.jpg', 8),
(242, 'oppo_find_n3_16gb_512gb-14.jpg', 8),
(243, 'oppo_find_n3_16gb_512gb-15.jpg', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ban_dienthoai`
--

CREATE TABLE `ban_dienthoai` (
  `ma_ban` int(11) NOT NULL,
  `ma_dienthoai` int(11) NOT NULL,
  `ngay_ban` date NOT NULL,
  `so_luong_ban` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `ma_binhluan` int(11) NOT NULL,
  `ma_nguoidung` int(11) NOT NULL,
  `ma_dienthoai` int(11) NOT NULL,
  `noi_dung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`ma_binhluan`, `ma_nguoidung`, `ma_dienthoai`, `noi_dung`) VALUES
(1, 1, 1, 'Sản phẩm tốt, giao hàng nhanh\nCảm ơn shop!'),
(2, 3, 6, 'Tôi không thích sản phẩm!'),
(3, 3, 1, 'Điện thoại bị lỗi, văng ứng dụng và khởi động lại liên tục. Tôi thất vọng về sản phẩm.'),
(5, 3, 1, 'Bình luận 2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhgia`
--

CREATE TABLE `danhgia` (
  `ma_danhgia` int(11) NOT NULL,
  `ma_nguoidung` int(11) NOT NULL,
  `ma_dienthoai` int(11) NOT NULL,
  `gia_tri` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `danhgia`
--

INSERT INTO `danhgia` (`ma_danhgia`, `ma_nguoidung`, `ma_dienthoai`, `gia_tri`) VALUES
(1, 1, 1, 5),
(6, 2, 2, 3),
(7, 2, 1, 3),
(8, 2, 6, 4),
(9, 1, 6, 3),
(10, 1, 8, 4),
(11, 1, 4, 3),
(12, 3, 6, 2),
(13, 3, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dienthoai`
--

CREATE TABLE `dienthoai` (
  `ma_dienthoai` int(11) NOT NULL,
  `ten_dienthoai` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gia_ban_dienthoai` int(11) NOT NULL,
  `giam_gia_dienthoai` int(11) DEFAULT 0,
  `mo_ta_dienthoai` text NOT NULL,
  `ton_kho` int(11) DEFAULT 0,
  `da_ban` int(11) DEFAULT 0,
  `luot_xem` int(11) DEFAULT 0,
  `luot_binh_luan` int(11) DEFAULT 0,
  `luot_danh_gia` int(11) DEFAULT 0,
  `ma_hang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `dienthoai`
--

INSERT INTO `dienthoai` (`ma_dienthoai`, `ten_dienthoai`, `gia_ban_dienthoai`, `giam_gia_dienthoai`, `mo_ta_dienthoai`, `ton_kho`, `da_ban`, `luot_xem`, `luot_binh_luan`, `luot_danh_gia`, `ma_hang`) VALUES
(1, 'iPhone 15 128GB | Chính hãng VN/A', 22990000, 6, 'Thiết kế thời thượng và bền bỉ - Mặt lưng kính được pha màu xu hướng cùng khung viền nhôm bền bỉ\nDynamic Island hiển thị linh động mọi thông báo ngay lập tức giúp bạn nắm bắt mọi thông tin\nChụp ảnh đẹp nức lòng - Camera chính 48MP, Độ phân giải lên đến 4x và Tele 2x chụp chân dung hoàn hảo\nPin dùng cả ngày không lắng lo - Thời gian xem video lên đến 20 giờ và sạc nhanh qua cổng USB-C tiện lợi\nCải tiến hiệu năng vượt bậc - A16 Bionic mạnh mẽ giúp bạn cân mọi tác vụ dù có yêu cầu đồ hoạ cao', 10, 0, 56, 3, 3, 1),
(2, 'iPhone 14 Pro Max 128GB | Chính hãng VN/A', 29990000, 8, 'Màn hình Dynamic Island - Sự biến mất của màn hình tai thỏ thay thế bằng thiết kế viên thuốc, OLED 6,7 inch, hỗ trợ always-on display\r\nCấu hình iPhone 14 Pro Max mạnh mẽ, hiệu năng cực khủng từ chipset A16 Bionic\r\nLàm chủ công nghệ nhiếp ảnh - Camera sau 48MP, cảm biến TOF sống động\r\nPin liền lithium-ion kết hợp cùng công nghệ sạc nhanh cải tiến', 0, 0, 35, 0, 1, 1),
(3, 'iPhone 15 Pro Max 256GB | Chính hãng VN/A', 34990000, 5, 'Thiết kế khung viền từ titan chuẩn hàng không vũ trụ - Cực nhẹ, bền cùng viền cạnh mỏng cầm nắm thoải mái\r\nHiệu năng Pro chiến game thả ga - Chip A17 Pro mang lại hiệu năng đồ họa vô cùng sống động và chân thực\r\nThoả sức sáng tạo và quay phim chuyên nghiệp - Cụm 3 camera sau đến 48MP và nhiều chế độ tiên tiến\r\nNút tác vụ mới giúp nhanh chóng kích hoạt tính năng yêu thích của bạn', 0, 0, 5, 0, 0, 1),
(4, 'Samsung Galaxy S23 Ultra 256GB', 31990000, 30, 'Thoả sức chụp ảnh, quay video chuyên nghiệp - Camera đến 200MP, chế độ chụp đêm cải tiến, bộ xử lí ảnh thông minh\r\nChiến game bùng nổ - chip Snapdragon 8 Gen 2 8 nhân tăng tốc độ xử lí, màn hình 120Hz, pin 5.000mAh\r\nNâng cao hiệu suất làm việc với Siêu bút S Pen tích hợp, dễ dàng đánh dấu sự kiện từ hình ảnh hoặc video\r\nThiết kế bền bỉ, thân thiện - Màu sắc lấy cảm hứng từ thiên nhiên, chất liệu kính và lớp phim phủ PET tái chế', 0, 0, 8, 0, 1, 2),
(5, 'Samsung Galaxy Z Flip5 512GB', 29990000, 43, 'Thần thái nổi bật, cân mọi phong cách- Lấy cảm hứng từ thiên nhiên với màu sắc thời thượng, xu hướng\r\nThiết kế thu hút ánh nhìn - Gập không kẽ hỡ, dẫn đầu công nghệ bản lề Flex\r\nTuyệt tác selfie thoả sức sáng tạo - Camera sau hỗ trợ AI xử lí cực sắc nét ngay cả trên màn hình ngoài\r\nBền bỉ bất chấp mọi tình huống - Đạt chuẩn kháng bụi và nước IP68 cùng chất liệu nhôm Armor Aluminum giúp hạn chế cong và xước', 0, 0, 2, 0, 0, 2),
(6, 'Samsung Galaxy S22 Ultra (12GB - 256GB)', 33990000, 49, 'Vi xử lý mạnh mẽ nhất Galaxy - Snapdragon 8 Gen 1 (4 nm)\r\nCamera mắt thần bóng đêm Nightography - Chụp đêm cực đỉnh\r\nS Pen đầu tiên trên Galaxy S - Độ trễ thấp, dễ thao tác\r\nDung lượng pin bất chấp ngày đêm - Viên pin 5000mAh, sạc nhanh 45W', 0, 0, 9, 1, 3, 2),
(7, 'OPPO Find N3 Flip 12GB 256GB', 22990000, 0, 'Thiết kế gập linh hoạt, đường cong 3D, đường cắt kim cương - biểu tượng của sự phong cách giúp bạn luôn toả sáng\nĐiện thoại gập sở hữu 3 camera sắc nét - Chụp hình đơn giản hơn với Chế độ Flexform\nMàn hình phụ vạn năng - dễ dàng thao tác các tác vụ ngay trên màn hình phụ và tuỳ biến theo sở thích\nMàn hình sống động đáng kinh ngạc - Kích thước 6.8i nches, hỗ trợ 120Hz, HDR10+', 0, 0, 4, 0, 0, 4),
(8, 'OPPO Find N3 16GB 512GB', 44990000, 0, 'Bậc thầy thiết kế, siêu mỏng nhe - Mỏng chỉ 239g, nhẹ chỉ 5.8mm với nếp gấp tàng hình\r\nRực rõ mọi màn hình hiển thị - Kích thước lên đến 7.8mm, độ phân giải 2K+ cùng tần số quét 120Hz mượt mà\r\nBậc thầy nhiếp ảnh - 3 camera hàng đầu đến 64MP kết hợp cùng đa dạng chế độ chụp hoàn hảo\r\nNâng cao hiệu suất sử dụng - Chip MediaTek Dimensity 9200 5G mạnh mẽ cùng hàng loạt tính năng đa nhiệm thông tinh', 0, 0, 3, 0, 1, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `ma_giohang` int(11) NOT NULL,
  `ma_nguoidung` int(11) NOT NULL,
  `ma_dienthoai` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `giohang`
--

INSERT INTO `giohang` (`ma_giohang`, `ma_nguoidung`, `ma_dienthoai`, `so_luong`) VALUES
(3, 1, 3, 2),
(4, 1, 6, 4),
(5, 1, 8, 1),
(6, 1, 7, 1),
(7, 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hang_dienthoai`
--

CREATE TABLE `hang_dienthoai` (
  `ma_hang` int(11) NOT NULL,
  `ten_hang` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `hang_dienthoai`
--

INSERT INTO `hang_dienthoai` (`ma_hang`, `ten_hang`) VALUES
(1, 'Apple'),
(2, 'Samsung'),
(3, 'Xiaomi'),
(4, 'OPPO'),
(5, 'realme'),
(6, 'vivo'),
(7, 'Nokia'),
(8, 'ASUS'),
(9, 'Nubia'),
(10, 'TECNO'),
(11, 'OnePlus');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lich_su_giao_dich`
--

CREATE TABLE `lich_su_giao_dich` (
  `ma_giao_dich` int(11) NOT NULL,
  `ma_nguoidung` int(11) NOT NULL,
  `ma_dienthoai` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `ngay_giao_dich` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `ma_nguoidung` int(11) NOT NULL,
  `quyen_admin` tinyint(1) DEFAULT 0,
  `ten_dang_nhap` varchar(30) NOT NULL,
  `mat_khau` varchar(200) NOT NULL,
  `ho_ten` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `dien_thoai` varchar(30) DEFAULT NULL,
  `dia_chi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`ma_nguoidung`, `quyen_admin`, `ten_dang_nhap`, `mat_khau`, `ho_ten`, `email`, `dien_thoai`, `dia_chi`) VALUES
(1, 0, 'mai_tien_dung', '$2y$10$nprBKzfkXEOMNoicD/qVSe1Z0c48Sb1A3GXjSqQKA8dr3Jy50tizy', 'Mai Tiến Dũng', 'dungmt.22ns@vku.udn.vn', '0567250721', 'Bình Hòa 4, Khuê trung, Cẩm Lệ, Đà Nẵng'),
(2, 0, 'le_thanh_hai', '$2y$10$Uw2vIu20tzK/8CUiBVaIXO7znura8xN6epFANK5ip4UhND8RghDKu', 'Lee Thanh Hair', 'hailt.22ns@vku.udn.vn', '0932591901', ''),
(3, 0, 'ngo_zero', '$2y$10$mTxvYMGOdmrC759C6.YfEui7C3lckXlNeLru/24yTnieAkT3Os7hG', 'Ngô Zero', 'ngozero@gmail.com', '000000000', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhap_dienthoai`
--

CREATE TABLE `nhap_dienthoai` (
  `ma_nhap` int(11) NOT NULL,
  `ma_dienthoai` int(11) NOT NULL,
  `ngay_nhap` date NOT NULL,
  `gia_nhap` int(11) DEFAULT NULL,
  `so_luong_nhap` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `ma_anh` int(11) NOT NULL,
  `link_anh` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`ma_anh`, `link_anh`) VALUES
(9, 'slide1.png'),
(10, 'slide2.png'),
(11, 'slide3.png'),
(12, 'slide4.png'),
(13, 'slide5.png'),
(14, 'slide6.png'),
(15, 'slide7.png'),
(16, 'slide8.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thong_so_ky_thuat`
--

CREATE TABLE `thong_so_ky_thuat` (
  `ma_thong_so` int(11) NOT NULL,
  `ten_thong_so` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `thong_so_ky_thuat`
--

INSERT INTO `thong_so_ky_thuat` (`ma_thong_so`, `ten_thong_so`) VALUES
(1, 'Kích thước màn hình'),
(2, 'Công nghệ màn hình'),
(3, 'Camera sau'),
(4, 'Camera trước'),
(5, 'Chipset'),
(6, 'Dung lượng RAM'),
(7, 'Bộ nhớ trong'),
(8, 'Pin'),
(9, 'Thẻ SIM'),
(10, 'Hệ điều hành'),
(11, 'Độ phân giải màn hình'),
(12, 'Tính năng màn hình');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thong_so_ky_thuat_dienthoai`
--

CREATE TABLE `thong_so_ky_thuat_dienthoai` (
  `ma_thong_so` int(11) NOT NULL,
  `ma_dienthoai` int(11) NOT NULL,
  `gia_tri` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `thong_so_ky_thuat_dienthoai`
--

INSERT INTO `thong_so_ky_thuat_dienthoai` (`ma_thong_so`, `ma_dienthoai`, `gia_tri`) VALUES
(1, 1, '6.1 inches'),
(2, 1, 'Super Retina XDR OLED'),
(3, 1, 'Camera chính: 48MP\r\nCamerra góc rộng: 12MP\r\nCamera Tele: 12MP'),
(4, 1, '12MP'),
(5, 1, 'Apple A16 Bionic'),
(6, 1, '6 GB'),
(7, 1, '128 GB'),
(8, 1, '3349 mAh'),
(9, 1, '2 SIM (nano‑SIM và eSIM)'),
(10, 1, 'iOS 17'),
(11, 1, '1179 x 2556 pixels'),
(12, 1, 'Dynamic Island\r\nHDR display\r\nTrue Tone\r\nWide color (P3)\r\nHaptic Touch\r\nLớp phủ oleophobia chống dấu vân tay\r\nĐộ sáng tối đa: 2000 nits\r\nMặt kính cảm ứng: Kính cường lực Ceramic Shield'),
(1, 2, '6.7 inches'),
(2, 2, 'Super Retina XDR OLED'),
(3, 2, 'Camera chính: 48 MP, f/1.8, 24mm, 1.22µm, PDAF, OIS\r\nCamera góc siêu rộng: 12 MP, f/2.2, 13mm, 120˚, 1.4µm, PDAF\r\nCamera tele: 12 MP, f/2.8, 77mm (telephoto), PDAF, OIS, 3x optical zoom\r\nCảm biến độ sâu TOF 3D LiDAR'),
(4, 2, 'Camera selfie: 12 MP, f/1.9, 23mm, 1/3.6\", PDAF'),
(5, 2, 'Apple A16 Bionic 6-core'),
(6, 2, '6 GB'),
(7, 2, '128 GB'),
(8, 2, '4.323 mAh'),
(9, 2, '2 SIM (nano‑SIM và eSIM)'),
(10, 2, 'iOS 16'),
(11, 2, '2796 x 1290-pixel'),
(12, 2, '120Hz, Always-On display, HDR, True Tone, Haptic Touch, 2,000,000:1, 2000 nits'),
(1, 3, '6.7 inches'),
(2, 3, 'Super Retina XDR OLED'),
(3, 3, 'Camera chính: 48MP, 24 mm, ƒ/1.78,\r\nCamera góc siêu rộng: 12 MP, 13 mm, ƒ/2.2\r\nCamera Tele 5x: 12 MP, 120 mm, ƒ/2.8\r\nCamera Tele 2x: 12 MP, 48 mm, ƒ/1.78'),
(4, 3, '12MP, ƒ/1.9'),
(5, 3, 'A17 Pro'),
(6, 3, '8 GB'),
(7, 3, '256 GB'),
(8, 3, '4422 mAh'),
(9, 3, '2 SIM (nano‑SIM và eSIM)'),
(10, 3, 'iOS 17'),
(11, 3, '2796 x 1290-pixel'),
(12, 3, 'Tốc độ làm mới 120Hz\r\n460 ppi\r\nHDR\r\nTrue Tone\r\nDải màu rộng (P3)\r\nHaptic Touch\r\nTỷ lệ tương phản 2.000.000:1'),
(1, 4, '6.8 inches'),
(2, 4, 'Dynamic AMOLED 2X'),
(3, 4, 'Siêu rộng: 12MP F2.2 (Dual Pixel AF)\r\nChính: 200MP F1.7 OIS ±3° (Super Quad Pixel AF)\r\nTele 1: 10MP F4.9 (10X, Dual Pixel AF) OIS,\r\nTele 2: 10MP F2.4 (3X, Dual Pixel AF) OIS Thu phóng chuẩn không gian 100X'),
(4, 4, '12MP F2.2 (Dual Pixel AF)'),
(5, 4, 'Snapdragon 8 Gen 2 (4 nm)'),
(6, 4, '8 GB'),
(7, 4, '256 GB'),
(8, 4, '5.000mAh'),
(9, 4, '2 Nano SIM hoặc 1 Nano + 1 eSIM'),
(10, 4, 'Android'),
(11, 4, '1440 x 3088 pixels (QHD+)'),
(12, 4, '120Hz, HDR10+, 1750 nits, Gorilla Glass Victus 2'),
(1, 5, '6.7 inches'),
(2, 5, 'Dynamic AMOLED 2X'),
(3, 5, 'Camera siêu rộng: 12MP, F2.2, 123°, 1.12 μm, FF\r\nCamera chính: 12MP, F1.8, Dual Pixel, 1.8μm, OIS'),
(4, 5, '10MP, F2.4, 1.22μm'),
(5, 5, 'Snapdragon 8 Gen 2 for Galaxy'),
(6, 5, '8 GB'),
(7, 5, '512 GB'),
(8, 5, '3700 mAh'),
(9, 5, 'Nano-SIM + eSIM'),
(10, 5, 'Android 13'),
(11, 5, '1080 x 2640 pixels'),
(12, 5, 'Màn hình trong: Dynamic AMOLED 2X, FHD+ (2640 x 1080 Pixels), 120 Hz, Ultra Thin Glass, độ sáng tối đa 1000nits\r\nMàn hình phụ: 3.4\" (720x748) Super AMOLED, 60Hz, 306ppi, Corning Gorilla Glass Victus 2'),
(1, 6, '6.8 inches'),
(2, 6, 'Dynamic AMOLED 2X'),
(3, 6, '108 MP, f/1.8 góc rộng\r\n10 MP, f/4.9\r\n10 MP, f/2.4\r\n12 MP, f/2.2 góc siêu rộng'),
(4, 6, '40 MP, f/2.2'),
(5, 6, 'Snapdragon 8 Gen 1 (4 nm)'),
(6, 6, '12 GB'),
(7, 6, '256 GB'),
(8, 6, '5000 mAh'),
(9, 6, '2 Nano-SIM + eSIM'),
(10, 6, 'Android 12, One UI 4.1'),
(11, 6, '1440 x 3088 pixels (QHD+)'),
(12, 6, 'Tần số quét 120Hz\r\nCông nghệ HDR10+, 1750 nits'),
(1, 7, '6.8 inches'),
(2, 7, 'AMOLED'),
(3, 7, 'Camera chính: 50 MP, f/1.8, OIS\r\nCamera góc rộng: 48 MP, f/2.2\r\nTele: 32 MP, f/2.0'),
(4, 7, '32 MP, f/2.4, FOV 90°, ống kính 5P; Hỗ trợ AF'),
(5, 7, 'MediaTek Dimensity 9200'),
(6, 7, '12 GB'),
(7, 7, '256 GB'),
(8, 7, 'Li-Po 4300 mAh'),
(9, 7, '2 SIM (Nano-SIM)'),
(10, 7, 'Android 13'),
(11, 7, '1080 x 2520 pixels'),
(12, 7, 'Màn hình chính: 6.8 inch, FHD+ (1080 x 2520 Pixels), tần số quét 120 Hz, 1.07 tỷ màu,1600 nits, Kính siêu mỏng Schott UTG\r\nMàn hình phụ: 3.26 inch, AMOLED, 720 × 382 pixels, 16.7 triệu màu, độ sáng 900 nits, Kính cường lực GG7'),
(1, 8, '7.82 inches'),
(2, 8, 'OLED'),
(3, 8, 'Camera chính: 48MP, f/1.7, OIS\r\nCamera góc rộng: 48MP, f/2.2\r\nCamera Tele: 64MP, f/2.6'),
(4, 8, 'Màn hình chính: 20MP, f/2.2\r\nMàn hình ngoài: 32MP, f/2.4'),
(5, 8, 'Snapdragon 8 Gen 2 8 nhân'),
(6, 8, '16 GB'),
(7, 8, '512 GB'),
(8, 8, '4805 mAh'),
(9, 8, 'Nano-SIM + eSIM'),
(10, 8, 'Android 13'),
(11, 8, '2268 x 2440 pixels'),
(12, 8, 'Màn hình chính: 7.82 inches, 2K+ (2268 x 2440 Pixels), OLED, 120Hz, 2800 nit, 1 tỷ màu, Kính UTG\r\nMàn hình phụ: 6.31 inches, FHD+ (1116 x 2484 Pixels), 120Hz, Kính siêu mỏng Nanocrystal');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `anh_dienthoai`
--
ALTER TABLE `anh_dienthoai`
  ADD PRIMARY KEY (`ma_anh`),
  ADD KEY `ma_dienthoai` (`ma_dienthoai`);

--
-- Chỉ mục cho bảng `ban_dienthoai`
--
ALTER TABLE `ban_dienthoai`
  ADD PRIMARY KEY (`ma_ban`),
  ADD KEY `ma_dienthoai` (`ma_dienthoai`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`ma_binhluan`),
  ADD KEY `ma_nguoidung` (`ma_nguoidung`),
  ADD KEY `ma_dienthoai` (`ma_dienthoai`);

--
-- Chỉ mục cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD PRIMARY KEY (`ma_danhgia`),
  ADD KEY `ma_nguoidung` (`ma_nguoidung`),
  ADD KEY `ma_dienthoai` (`ma_dienthoai`);

--
-- Chỉ mục cho bảng `dienthoai`
--
ALTER TABLE `dienthoai`
  ADD PRIMARY KEY (`ma_dienthoai`),
  ADD UNIQUE KEY `ten_dienthoai` (`ten_dienthoai`),
  ADD KEY `ma_hang` (`ma_hang`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`ma_giohang`),
  ADD KEY `ma_nguoidung` (`ma_nguoidung`),
  ADD KEY `ma_dienthoai` (`ma_dienthoai`);

--
-- Chỉ mục cho bảng `hang_dienthoai`
--
ALTER TABLE `hang_dienthoai`
  ADD PRIMARY KEY (`ma_hang`);

--
-- Chỉ mục cho bảng `lich_su_giao_dich`
--
ALTER TABLE `lich_su_giao_dich`
  ADD PRIMARY KEY (`ma_giao_dich`),
  ADD KEY `ma_nguoidung` (`ma_nguoidung`),
  ADD KEY `ma_dienthoai` (`ma_dienthoai`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`ma_nguoidung`);

--
-- Chỉ mục cho bảng `nhap_dienthoai`
--
ALTER TABLE `nhap_dienthoai`
  ADD PRIMARY KEY (`ma_nhap`),
  ADD KEY `ma_dienthoai` (`ma_dienthoai`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`ma_anh`);

--
-- Chỉ mục cho bảng `thong_so_ky_thuat`
--
ALTER TABLE `thong_so_ky_thuat`
  ADD PRIMARY KEY (`ma_thong_so`);

--
-- Chỉ mục cho bảng `thong_so_ky_thuat_dienthoai`
--
ALTER TABLE `thong_so_ky_thuat_dienthoai`
  ADD KEY `ma_thong_so` (`ma_thong_so`),
  ADD KEY `ma_dienthoai` (`ma_dienthoai`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `anh_dienthoai`
--
ALTER TABLE `anh_dienthoai`
  MODIFY `ma_anh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT cho bảng `ban_dienthoai`
--
ALTER TABLE `ban_dienthoai`
  MODIFY `ma_ban` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `ma_binhluan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  MODIFY `ma_danhgia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `dienthoai`
--
ALTER TABLE `dienthoai`
  MODIFY `ma_dienthoai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `ma_giohang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `hang_dienthoai`
--
ALTER TABLE `hang_dienthoai`
  MODIFY `ma_hang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `lich_su_giao_dich`
--
ALTER TABLE `lich_su_giao_dich`
  MODIFY `ma_giao_dich` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `ma_nguoidung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `nhap_dienthoai`
--
ALTER TABLE `nhap_dienthoai`
  MODIFY `ma_nhap` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `ma_anh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `thong_so_ky_thuat`
--
ALTER TABLE `thong_so_ky_thuat`
  MODIFY `ma_thong_so` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `anh_dienthoai`
--
ALTER TABLE `anh_dienthoai`
  ADD CONSTRAINT `anh_dienthoai_ibfk_1` FOREIGN KEY (`ma_dienthoai`) REFERENCES `dienthoai` (`ma_dienthoai`);

--
-- Các ràng buộc cho bảng `ban_dienthoai`
--
ALTER TABLE `ban_dienthoai`
  ADD CONSTRAINT `ban_dienthoai_ibfk_1` FOREIGN KEY (`ma_dienthoai`) REFERENCES `dienthoai` (`ma_dienthoai`);

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`ma_nguoidung`) REFERENCES `nguoidung` (`ma_nguoidung`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`ma_dienthoai`) REFERENCES `dienthoai` (`ma_dienthoai`);

--
-- Các ràng buộc cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD CONSTRAINT `danhgia_ibfk_1` FOREIGN KEY (`ma_nguoidung`) REFERENCES `nguoidung` (`ma_nguoidung`),
  ADD CONSTRAINT `danhgia_ibfk_2` FOREIGN KEY (`ma_dienthoai`) REFERENCES `dienthoai` (`ma_dienthoai`);

--
-- Các ràng buộc cho bảng `dienthoai`
--
ALTER TABLE `dienthoai`
  ADD CONSTRAINT `dienthoai_ibfk_1` FOREIGN KEY (`ma_hang`) REFERENCES `hang_dienthoai` (`ma_hang`);

--
-- Các ràng buộc cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `giohang_ibfk_1` FOREIGN KEY (`ma_nguoidung`) REFERENCES `nguoidung` (`ma_nguoidung`),
  ADD CONSTRAINT `giohang_ibfk_2` FOREIGN KEY (`ma_dienthoai`) REFERENCES `dienthoai` (`ma_dienthoai`);

--
-- Các ràng buộc cho bảng `lich_su_giao_dich`
--
ALTER TABLE `lich_su_giao_dich`
  ADD CONSTRAINT `lich_su_giao_dich_ibfk_1` FOREIGN KEY (`ma_nguoidung`) REFERENCES `nguoidung` (`ma_nguoidung`),
  ADD CONSTRAINT `lich_su_giao_dich_ibfk_2` FOREIGN KEY (`ma_dienthoai`) REFERENCES `dienthoai` (`ma_dienthoai`);

--
-- Các ràng buộc cho bảng `nhap_dienthoai`
--
ALTER TABLE `nhap_dienthoai`
  ADD CONSTRAINT `nhap_dienthoai_ibfk_1` FOREIGN KEY (`ma_dienthoai`) REFERENCES `dienthoai` (`ma_dienthoai`);

--
-- Các ràng buộc cho bảng `thong_so_ky_thuat_dienthoai`
--
ALTER TABLE `thong_so_ky_thuat_dienthoai`
  ADD CONSTRAINT `thong_so_ky_thuat_dienthoai_ibfk_1` FOREIGN KEY (`ma_thong_so`) REFERENCES `thong_so_ky_thuat` (`ma_thong_so`),
  ADD CONSTRAINT `thong_so_ky_thuat_dienthoai_ibfk_2` FOREIGN KEY (`ma_dienthoai`) REFERENCES `dienthoai` (`ma_dienthoai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
