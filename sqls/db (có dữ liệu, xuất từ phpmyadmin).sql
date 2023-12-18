--Tạo CSDL cellphoneshopv0
CREATE DATABASE IF NOT EXISTS cellphoneshopv0;
USE cellphoneshopv0;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3307
-- Thời gian đã tạo: Th12 18, 2023 lúc 10:43 AM
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
(243, 'oppo_find_n3_16gb_512gb-15.jpg', 8),
(273, 'oppo_reno8_5g_(8gb_256gb)-1.jpg', 10),
(274, 'oppo_reno8_5g_(8gb_256gb)-2.jpg', 10),
(275, 'oppo_reno8_5g_(8gb_256gb)-3.jpg', 10),
(276, 'oppo_reno8_5g_(8gb_256gb)-4.jpg', 10),
(277, 'oppo_reno8_5g_(8gb_256gb)-5.jpg', 10),
(278, 'oppo_reno8_5g_(8gb_256gb)-6.jpg', 10),
(279, 'oppo_reno8_5g_(8gb_256gb)-7.jpg', 10),
(280, 'oppo_reno8_5g_(8gb_256gb)-8.jpg', 10),
(281, 'oppo_reno8_5g_(8gb_256gb)-9.jpg', 10),
(282, 'oppo_reno8_5g_(8gb_256gb)-10.jpg', 10),
(283, 'xiaomi_redmi_note_12s-1.jpg', 11),
(284, 'xiaomi_redmi_note_12s-2.jpg', 11),
(285, 'xiaomi_redmi_note_12s-3.jpg', 11),
(286, 'xiaomi_redmi_note_12s-4.jpg', 11),
(287, 'xiaomi_redmi_note_12s-5.jpg', 11),
(288, 'xiaomi_redmi_note_12s-6.jpg', 11),
(289, 'xiaomi_redmi_note_12s-7.jpg', 11),
(290, 'xiaomi_redmi_note_12s-8.jpg', 11),
(291, 'xiaomi_redmi_note_12s-9.jpg', 11),
(292, 'xiaomi_redmi_note_12s-10.jpg', 11),
(293, 'xiaomi_12_pro_(5g)-1.jpg', 12),
(294, 'xiaomi_12_pro_(5g)-2.jpg', 12),
(295, 'xiaomi_12_pro_(5g)-3.jpg', 12),
(296, 'xiaomi_12_pro_(5g)-4.jpg', 12),
(297, 'xiaomi_12_pro_(5g)-5.jpg', 12),
(298, 'xiaomi_12_pro_(5g)-6.jpg', 12),
(299, 'xiaomi_12_pro_(5g)-7.jpg', 12),
(300, 'xiaomi_12_pro_(5g)-8.jpg', 12),
(301, 'xiaomi_12_pro_(5g)-9.jpg', 12),
(302, 'xiaomi_12_pro_(5g)-10.jpg', 12),
(303, 'xiaomi_redmi_note_12_pro_5g-1.jpg', 13),
(304, 'xiaomi_redmi_note_12_pro_5g-2.jpg', 13),
(305, 'xiaomi_redmi_note_12_pro_5g-3.jpg', 13),
(306, 'xiaomi_redmi_note_12_pro_5g-4.jpg', 13),
(307, 'xiaomi_redmi_note_12_pro_5g-5.jpg', 13),
(308, 'xiaomi_redmi_note_12_pro_5g-6.jpg', 13),
(309, 'xiaomi_redmi_note_12_pro_5g-7.jpg', 13),
(310, 'xiaomi_redmi_note_12_pro_5g-8.jpg', 13),
(311, 'xiaomi_redmi_note_12_pro_5g-9.jpg', 13),
(312, 'xiaomi_redmi_note_12_pro_5g-10.jpg', 13),
(313, 'realme_11_8gb_128gb-1.jpg', 14),
(314, 'realme_11_8gb_128gb-2.jpg', 14),
(315, 'realme_11_8gb_128gb-3.jpg', 14),
(316, 'realme_11_8gb_128gb-4.jpg', 14),
(317, 'realme_11_8gb_128gb-5.jpg', 14),
(318, 'realme_11_8gb_128gb-6.jpg', 14),
(319, 'realme_11_8gb_128gb-7.jpg', 14),
(320, 'realme_11_8gb_128gb-8.jpg', 14),
(321, 'realme_11_8gb_128gb-9.jpg', 14),
(322, 'realme_11_8gb_128gb-10.jpg', 14),
(323, 'realme_10_8gb_256gb-1.jpg', 15),
(324, 'realme_10_8gb_256gb-2.jpg', 15),
(325, 'realme_10_8gb_256gb-3.jpg', 15),
(326, 'realme_10_8gb_256gb-4.jpg', 15),
(327, 'realme_10_8gb_256gb-5.jpg', 15),
(328, 'realme_10_8gb_256gb-6.jpg', 15),
(329, 'realme_10_8gb_256gb-7.jpg', 15),
(330, 'realme_10_8gb_256gb-8.jpg', 15),
(331, 'realme_10_8gb_256gb-9.jpg', 15),
(332, 'realme_10_8gb_256gb-10.jpg', 15),
(333, 'realme_11_pro_(8gb_-__256gb)-1.jpg', 16),
(334, 'realme_11_pro_(8gb_-__256gb)-2.jpg', 16),
(335, 'realme_11_pro_(8gb_-__256gb)-3.jpg', 16),
(336, 'realme_11_pro_(8gb_-__256gb)-4.jpg', 16),
(337, 'realme_11_pro_(8gb_-__256gb)-5.jpg', 16),
(338, 'realme_11_pro_(8gb_-__256gb)-6.jpg', 16),
(339, 'realme_11_pro_(8gb_-__256gb)-7.jpg', 16),
(340, 'realme_11_pro_(8gb_-__256gb)-8.jpg', 16),
(341, 'realme_11_pro_(8gb_-__256gb)-9.jpg', 16),
(342, 'realme_11_pro_(8gb_-__256gb)-10.jpg', 16),
(343, 'vivo_v29e_8gb_256gb-1.jpg', 17),
(344, 'vivo_v29e_8gb_256gb-2.jpg', 17),
(345, 'vivo_v29e_8gb_256gb-3.jpg', 17),
(346, 'vivo_v29e_8gb_256gb-4.jpg', 17),
(347, 'vivo_v29e_8gb_256gb-5.jpg', 17),
(348, 'vivo_v29e_8gb_256gb-6.jpg', 17),
(349, 'vivo_v29e_8gb_256gb-7.jpg', 17),
(350, 'vivo_v29e_8gb_256gb-8.jpg', 17),
(351, 'vivo_v29e_8gb_256gb-9.jpg', 17),
(352, 'vivo_v29e_8gb_256gb-10.jpg', 17),
(353, 'vivo_v25_pro_8gb_128gb-1.jpg', 18),
(354, 'vivo_v25_pro_8gb_128gb-2.jpg', 18),
(355, 'vivo_v25_pro_8gb_128gb-3.jpg', 18),
(356, 'vivo_v25_pro_8gb_128gb-4.jpg', 18),
(357, 'vivo_v25_pro_8gb_128gb-5.jpg', 18),
(358, 'vivo_v25_pro_8gb_128gb-6.jpg', 18),
(359, 'vivo_v25_pro_8gb_128gb-7.jpg', 18),
(360, 'vivo_v25_pro_8gb_128gb-8.jpg', 18),
(361, 'vivo_v25_pro_8gb_128gb-9.jpg', 18),
(362, 'vivo_v25_pro_8gb_128gb-10.jpg', 18),
(363, 'vivo_v27e_8gb_256gb-1.jpg', 19),
(364, 'vivo_v27e_8gb_256gb-2.jpg', 19),
(365, 'vivo_v27e_8gb_256gb-3.jpg', 19),
(366, 'vivo_v27e_8gb_256gb-4.jpg', 19),
(367, 'vivo_v27e_8gb_256gb-5.jpg', 19),
(368, 'vivo_v27e_8gb_256gb-6.jpg', 19),
(369, 'vivo_v27e_8gb_256gb-7.jpg', 19),
(370, 'vivo_v27e_8gb_256gb-8.jpg', 19),
(371, 'vivo_v27e_8gb_256gb-9.jpg', 19),
(372, 'vivo_v27e_8gb_256gb-10.jpg', 19),
(373, 'nokia_c21_plus_2gb_32gb-1.jpg', 20),
(374, 'nokia_c21_plus_2gb_32gb-2.jpg', 20),
(375, 'nokia_c21_plus_2gb_32gb-3.jpg', 20),
(376, 'nokia_c21_plus_2gb_32gb-4.jpg', 20),
(377, 'nokia_c21_plus_2gb_32gb-5.jpg', 20),
(378, 'nokia_g11_plus_3gb_32gb-1.jpg', 21),
(379, 'nokia_g11_plus_3gb_32gb-2.jpg', 21),
(380, 'nokia_g11_plus_3gb_32gb-3.jpg', 21),
(381, 'nokia_g11_plus_3gb_32gb-4.jpg', 21),
(382, 'nokia_g11_plus_3gb_32gb-5.jpg', 21),
(383, 'nokia_g11_plus_3gb_32gb-6.jpg', 21),
(384, 'nokia_g11_plus_3gb_32gb-7.jpg', 21),
(385, 'nokia_g11_plus_3gb_32gb-8.jpg', 21),
(386, 'nokia_g11_plus_3gb_32gb-9.jpg', 21),
(387, 'nokia_g11_plus_3gb_32gb-10.jpg', 21),
(388, 'asus_rog_phone_7_ultimate_16gb_512gb_-_chỉ_có_tại_cellphones-1.jpg', 22),
(389, 'asus_rog_phone_7_ultimate_16gb_512gb_-_chỉ_có_tại_cellphones-2.jpg', 22),
(390, 'asus_rog_phone_7_ultimate_16gb_512gb_-_chỉ_có_tại_cellphones-3.jpg', 22),
(391, 'asus_rog_phone_7_ultimate_16gb_512gb_-_chỉ_có_tại_cellphones-4.jpg', 22),
(392, 'asus_rog_phone_7_ultimate_16gb_512gb_-_chỉ_có_tại_cellphones-5.jpg', 22),
(393, 'asus_rog_phone_7_ultimate_16gb_512gb_-_chỉ_có_tại_cellphones-6.jpg', 22),
(394, 'asus_rog_phone_7_ultimate_16gb_512gb_-_chỉ_có_tại_cellphones-7.jpg', 22),
(395, 'asus_rog_phone_7_ultimate_16gb_512gb_-_chỉ_có_tại_cellphones-8.jpg', 22),
(396, 'asus_rog_phone_7_ultimate_16gb_512gb_-_chỉ_có_tại_cellphones-9.jpg', 22),
(397, 'asus_rog_phone_7_ultimate_16gb_512gb_-_chỉ_có_tại_cellphones-10.jpg', 22),
(398, 'asus_rog_phone_7_16gb_512gb-1.jpg', 23),
(399, 'asus_rog_phone_7_16gb_512gb-2.jpg', 23),
(400, 'asus_rog_phone_7_16gb_512gb-3.jpg', 23),
(401, 'asus_rog_phone_7_16gb_512gb-4.jpg', 23),
(402, 'asus_rog_phone_7_16gb_512gb-5.jpg', 23),
(403, 'asus_rog_phone_7_16gb_512gb-6.jpg', 23),
(404, 'asus_rog_phone_7_16gb_512gb-7.jpg', 23),
(405, 'asus_rog_phone_7_16gb_512gb-8.jpg', 23),
(406, 'asus_rog_phone_7_16gb_512gb-9.jpg', 23),
(407, 'asus_rog_phone_7_16gb_512gb-10.jpg', 23),
(408, 'asus_rog_phone_6_batman_12gb_256gb-1.jpg', 24),
(409, 'asus_rog_phone_6_batman_12gb_256gb-2.jpg', 24),
(410, 'asus_rog_phone_6_batman_12gb_256gb-3.jpg', 24),
(411, 'asus_rog_phone_6_batman_12gb_256gb-4.jpg', 24),
(412, 'asus_rog_phone_6_batman_12gb_256gb-5.jpg', 24),
(413, 'asus_rog_phone_6_batman_12gb_256gb-6.jpg', 24),
(414, 'asus_rog_phone_6_batman_12gb_256gb-7.jpg', 24),
(415, 'asus_rog_phone_6_batman_12gb_256gb-8.jpg', 24),
(416, 'asus_rog_phone_6_batman_12gb_256gb-9.jpg', 24),
(417, 'asus_rog_phone_6_batman_12gb_256gb-10.jpg', 24),
(418, 'nubia_redmagic_8s_pro_5g_12gb_256gb-1.jpg', 25),
(419, 'nubia_redmagic_8s_pro_5g_12gb_256gb-2.jpg', 25),
(420, 'nubia_redmagic_8s_pro_5g_12gb_256gb-3.jpg', 25),
(421, 'nubia_redmagic_8s_pro_5g_12gb_256gb-4.jpg', 25),
(422, 'nubia_redmagic_8s_pro_5g_12gb_256gb-5.jpg', 25),
(423, 'nubia_redmagic_8s_pro_5g_12gb_256gb-6.jpg', 25),
(424, 'nubia_redmagic_8s_pro_5g_12gb_256gb-7.jpg', 25),
(425, 'nubia_redmagic_8s_pro_5g_12gb_256gb-8.jpg', 25),
(426, 'nubia_redmagic_8s_pro_5g_12gb_256gb-9.jpg', 25),
(427, 'nubia_redmagic_8s_pro_5g_12gb_256gb-10.jpg', 25),
(428, 'nubia_neo_5g_8gb_256gb-1.jpg', 26),
(429, 'nubia_neo_5g_8gb_256gb-2.jpg', 26),
(430, 'nubia_neo_5g_8gb_256gb-3.jpg', 26),
(431, 'nubia_neo_5g_8gb_256gb-4.jpg', 26),
(432, 'nubia_neo_5g_8gb_256gb-5.jpg', 26),
(433, 'nubia_neo_5g_8gb_256gb-6.jpg', 26),
(434, 'nubia_neo_5g_8gb_256gb-7.jpg', 26),
(435, 'nubia_neo_5g_8gb_256gb-8.jpg', 26),
(436, 'nubia_neo_5g_8gb_256gb-9.jpg', 26),
(437, 'nubia_neo_5g_8gb_256gb-10.jpg', 26),
(438, 'tecno_camon_20-1.jpg', 27),
(439, 'tecno_camon_20-2.jpg', 27),
(440, 'tecno_camon_20-3.jpg', 27),
(441, 'tecno_camon_20-4.jpg', 27),
(442, 'tecno_camon_20-5.jpg', 27),
(443, 'tecno_camon_20-6.jpg', 27),
(444, 'tecno_camon_20-7.jpg', 27),
(445, 'tecno_camon_20-8.jpg', 27),
(446, 'tecno_camon_20-9.jpg', 27),
(447, 'tecno_camon_20-10.jpg', 27),
(448, 'tecno_spark_10_8gb_128gb-1.jpg', 28),
(449, 'tecno_spark_10_8gb_128gb-2.jpg', 28),
(450, 'tecno_spark_10_8gb_128gb-3.jpg', 28),
(451, 'tecno_spark_10_8gb_128gb-4.jpg', 28),
(452, 'tecno_spark_10_8gb_128gb-5.jpg', 28),
(453, 'tecno_spark_10_8gb_128gb-6.jpg', 28),
(454, 'tecno_spark_10_pro_8gb_128gb-1.jpg', 29),
(455, 'tecno_spark_10_pro_8gb_128gb-2.jpg', 29),
(456, 'tecno_spark_10_pro_8gb_128gb-3.jpg', 29),
(457, 'tecno_spark_10_pro_8gb_128gb-4.jpg', 29),
(458, 'tecno_spark_10_pro_8gb_128gb-5.jpg', 29),
(459, 'tecno_spark_10_pro_8gb_128gb-6.jpg', 29),
(460, 'tecno_spark_10_pro_8gb_128gb-7.jpg', 29),
(461, 'tecno_spark_10_pro_8gb_128gb-8.jpg', 29),
(462, 'tecno_spark_10_pro_8gb_128gb-9.jpg', 29),
(463, 'tecno_spark_10_pro_8gb_128gb-10.jpg', 29),
(464, 'oneplus_8t_5g-1.jpg', 30),
(465, 'oneplus_8t_5g-2.jpg', 30),
(466, 'oneplus_8t_5g-3.jpg', 30),
(467, 'oneplus_8t_5g-4.jpg', 30),
(468, 'oneplus_8t_5g-5.jpg', 30),
(469, 'oneplus_nord_3_5g_16gb_256gb-1.jpg', 31),
(470, 'oneplus_nord_3_5g_16gb_256gb-2.jpg', 31),
(471, 'oneplus_nord_3_5g_16gb_256gb-3.jpg', 31),
(472, 'oneplus_nord_3_5g_16gb_256gb-4.jpg', 31),
(473, 'oneplus_nord_3_5g_16gb_256gb-5.jpg', 31),
(474, 'oneplus_nord_3_5g_16gb_256gb-6.jpg', 31),
(475, 'oneplus_nord_3_5g_16gb_256gb-7.jpg', 31),
(476, 'oneplus_nord_3_5g_16gb_256gb-8.jpg', 31),
(477, 'oneplus_nord_3_5g_16gb_256gb-9.jpg', 31),
(478, 'oneplus_nord_3_5g_16gb_256gb-10.jpg', 31),
(479, 'oneplus_11_5g_16gb_256gb-1.jpg', 32),
(480, 'oneplus_11_5g_16gb_256gb-2.jpg', 32),
(481, 'oneplus_11_5g_16gb_256gb-3.jpg', 32),
(482, 'oneplus_11_5g_16gb_256gb-4.jpg', 32),
(483, 'oneplus_11_5g_16gb_256gb-5.jpg', 32),
(484, 'oneplus_11_5g_16gb_256gb-6.jpg', 32),
(485, 'oneplus_11_5g_16gb_256gb-7.jpg', 32),
(486, 'oneplus_11_5g_16gb_256gb-8.jpg', 32),
(487, 'oneplus_11_5g_16gb_256gb-9.jpg', 32),
(488, 'oneplus_11_5g_16gb_256gb-10.jpg', 32);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ban_dienthoai`
--

CREATE TABLE `ban_dienthoai` (
  `ma_ban` int(11) NOT NULL,
  `ma_dienthoai` int(11) NOT NULL,
  `ngay_ban` date NOT NULL,
  `so_luong_ban` int(11) NOT NULL,
  `gia_ban` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `ban_dienthoai`
--

INSERT INTO `ban_dienthoai` (`ma_ban`, `ma_dienthoai`, `ngay_ban`, `so_luong_ban`, `gia_ban`) VALUES
(2, 1, '2003-12-23', 3, 21610000),
(3, 1, '2023-12-03', 1, 21610000),
(4, 1, '2023-12-03', 2, 21610000),
(5, 1, '2023-12-03', 1, 21610000);

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
(5, 3, 1, 'Bình luận 2'),
(6, 1, 6, 'Không tệ'),
(7, 2, 1, 'Sản phẩm tốt'),
(8, 2, 2, 'Sản phẩm rất tốt'),
(9, 1, 2, 'Chất lượng!');

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
(6, 2, 2, 4),
(7, 2, 1, 5),
(8, 2, 6, 5),
(9, 1, 6, 3),
(10, 1, 8, 4),
(11, 1, 4, 5),
(12, 3, 6, 2),
(13, 3, 1, 1),
(14, 1, 2, 5),
(15, 1, 7, 4);

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
  `ma_hang` int(11) NOT NULL,
  `da_xoa` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `dienthoai`
--

INSERT INTO `dienthoai` (`ma_dienthoai`, `ten_dienthoai`, `gia_ban_dienthoai`, `giam_gia_dienthoai`, `mo_ta_dienthoai`, `ton_kho`, `da_ban`, `luot_xem`, `luot_binh_luan`, `luot_danh_gia`, `ma_hang`, `da_xoa`) VALUES
(1, 'iPhone 15 128GB | Chính hãng VN/A', 22990000, 6, 'Thiết kế thời thượng và bền bỉ - Mặt lưng kính được pha màu xu hướng cùng khung viền nhôm bền bỉ\nDynamic Island hiển thị linh động mọi thông báo ngay lập tức giúp bạn nắm bắt mọi thông tin\nChụp ảnh đẹp nức lòng - Camera chính 48MP, Độ phân giải lên đến 4x và Tele 2x chụp chân dung hoàn hảo\nPin dùng cả ngày không lắng lo - Thời gian xem video lên đến 20 giờ và sạc nhanh qua cổng USB-C tiện lợi\nCải tiến hiệu năng vượt bậc - A16 Bionic mạnh mẽ giúp bạn cân mọi tác vụ dù có yêu cầu đồ hoạ cao', 3, 7, 108, 4, 3, 1, NULL),
(2, 'iPhone 14 Pro Max 128GB | Chính hãng VN/A', 29990000, 8, 'Màn hình Dynamic Island - Sự biến mất của màn hình tai thỏ thay thế bằng thiết kế viên thuốc, OLED 6,7 inch, hỗ trợ always-on display\r\nCấu hình iPhone 14 Pro Max mạnh mẽ, hiệu năng cực khủng từ chipset A16 Bionic\r\nLàm chủ công nghệ nhiếp ảnh - Camera sau 48MP, cảm biến TOF sống động\r\nPin liền lithium-ion kết hợp cùng công nghệ sạc nhanh cải tiến', 10, 0, 51, 2, 2, 1, NULL),
(3, 'iPhone 15 Pro Max 256GB | Chính hãng VN/A', 34990000, 5, 'Thiết kế khung viền từ titan chuẩn hàng không vũ trụ - Cực nhẹ, bền cùng viền cạnh mỏng cầm nắm thoải mái\r\nHiệu năng Pro chiến game thả ga - Chip A17 Pro mang lại hiệu năng đồ họa vô cùng sống động và chân thực\r\nThoả sức sáng tạo và quay phim chuyên nghiệp - Cụm 3 camera sau đến 48MP và nhiều chế độ tiên tiến\r\nNút tác vụ mới giúp nhanh chóng kích hoạt tính năng yêu thích của bạn', 0, 0, 7, 0, 0, 1, NULL),
(4, 'Samsung Galaxy S23 Ultra 256GB', 31990000, 30, 'Thoả sức chụp ảnh, quay video chuyên nghiệp - Camera đến 200MP, chế độ chụp đêm cải tiến, bộ xử lí ảnh thông minh\r\nChiến game bùng nổ - chip Snapdragon 8 Gen 2 8 nhân tăng tốc độ xử lí, màn hình 120Hz, pin 5.000mAh\r\nNâng cao hiệu suất làm việc với Siêu bút S Pen tích hợp, dễ dàng đánh dấu sự kiện từ hình ảnh hoặc video\r\nThiết kế bền bỉ, thân thiện - Màu sắc lấy cảm hứng từ thiên nhiên, chất liệu kính và lớp phim phủ PET tái chế', 0, 0, 15, 0, 1, 2, NULL),
(5, 'Samsung Galaxy Z Flip5 512GB', 29990000, 43, 'Thần thái nổi bật, cân mọi phong cách- Lấy cảm hứng từ thiên nhiên với màu sắc thời thượng, xu hướng\r\nThiết kế thu hút ánh nhìn - Gập không kẽ hỡ, dẫn đầu công nghệ bản lề Flex\r\nTuyệt tác selfie thoả sức sáng tạo - Camera sau hỗ trợ AI xử lí cực sắc nét ngay cả trên màn hình ngoài\r\nBền bỉ bất chấp mọi tình huống - Đạt chuẩn kháng bụi và nước IP68 cùng chất liệu nhôm Armor Aluminum giúp hạn chế cong và xước', 0, 0, 3, 0, 0, 2, NULL),
(6, 'Samsung Galaxy S22 Ultra (12GB - 256GB)', 33990000, 49, 'Vi xử lý mạnh mẽ nhất Galaxy - Snapdragon 8 Gen 1 (4 nm)\r\nCamera mắt thần bóng đêm Nightography - Chụp đêm cực đỉnh\r\nS Pen đầu tiên trên Galaxy S - Độ trễ thấp, dễ thao tác\r\nDung lượng pin bất chấp ngày đêm - Viên pin 5000mAh, sạc nhanh 45W', 7, 0, 20, 2, 3, 2, NULL),
(7, 'OPPO Find N3 Flip 12GB 256GB', 22990000, 0, 'Thiết kế gập linh hoạt, đường cong 3D, đường cắt kim cương - biểu tượng của sự phong cách giúp bạn luôn toả sáng\nĐiện thoại gập sở hữu 3 camera sắc nét - Chụp hình đơn giản hơn với Chế độ Flexform\nMàn hình phụ vạn năng - dễ dàng thao tác các tác vụ ngay trên màn hình phụ và tuỳ biến theo sở thích\nMàn hình sống động đáng kinh ngạc - Kích thước 6.8i nches, hỗ trợ 120Hz, HDR10+', 5, 0, 9, 0, 1, 4, NULL),
(8, 'OPPO Find N3 16GB 512GB', 44990000, 0, 'Bậc thầy thiết kế, siêu mỏng nhe - Mỏng chỉ 239g, nhẹ chỉ 5.8mm với nếp gấp tàng hình\r\nRực rõ mọi màn hình hiển thị - Kích thước lên đến 7.8mm, độ phân giải 2K+ cùng tần số quét 120Hz mượt mà\r\nBậc thầy nhiếp ảnh - 3 camera hàng đầu đến 64MP kết hợp cùng đa dạng chế độ chụp hoàn hảo\r\nNâng cao hiệu suất sử dụng - Chip MediaTek Dimensity 9200 5G mạnh mẽ cùng hàng loạt tính năng đa nhiệm thông tinh', 15, 0, 7, 0, 1, 4, NULL),
(10, 'OPPO Reno8 5G (8GB 256GB)', 13990000, 42, 'Tái hiện màu sắc sống động - Màn hình lớn AMOLED 6.4 inch với độ phân giải Full HD+\r\nSáng tạo không giới hạn - Cụm camera lên đến 50 MP & Phụ 8 MP, 2 MP chụp đêm rõ nét\r\nChiến game thả ga - đa nhiệm mượt mà với chip MediaTek Dimensity 1300 tối ưu hiệu suất\r\nThoải mái sử dụng không lo cạn pin - Viên pin 4500 mAh cùng sạc nhanh 80W', 0, 0, 1, 0, 0, 4, NULL),
(11, 'Xiaomi Redmi Note 12S', 6690000, 17, 'Thiết kế tinh tế, thu hút ánh nhìn - Sở hữu thiết kế cụm camera cải tiến cùng màu sắc thời thượng làm hài lòng bất kì ai\r\nTrọn vẹn từng thước phim - Màn hình 6.43inch cùng tấm nền AMOLED, tần số quét 90 Hz cho mọi khung hình trở nên sống động màu sắc\r\nCamera đỉnh không cần chỉnh - Cụm 3 camera với cảm biến chính AI đạt độ phân giải 108 MP\r\nHiệu năng ổ định, pin dùng dài lâu - Trang bị chip Mediatek Helio G96 cùng 5000 mAh và khả năng sạc nhanh 33 W', 0, 0, 1, 0, 0, 3, NULL),
(12, 'Xiaomi 12 Pro (5G)', 27990000, 49, 'Cân mọi tác vụ với CPU thế hệ mới - Vi xử lí Snapdragon 8 Gen 1 cùng RAM 12GB\r\nTrải ngiệm giải trí hoàn hảo với màn hình tràn viền sắc nét - Kích thước 6.73 inches, AMOLED\r\nCụm camera đa chức năng, lưu giữ mọi khoảnh khắc - Camera chính 50 MP đa dạng chế độ chụp\r\nThoải mái sử dụng cả ngày dài - Pin 4600 mAh, hỗ trợ sạc nhanh 120W', 0, 0, 2, 0, 0, 3, NULL),
(13, 'Xiaomi Redmi Note 12 Pro 5G', 9490000, 15, 'Thiết kế hiện đại, trẻ trung với mặt lưng kính thời thượng và khung viền kim loại vuông vức sang trọng\r\nTấm nền AMOLED cho khả năng hiển thị rõ nét, tần số quét 120Hz giúp mọi thao tác trở nên mượt mà\r\nChinh chiến mọi tựa game, tha hồ đa nhiệm với bộ vi xử lý Dimensity 1080 5G kết hợp với RAM 8 GB\r\nBắt trọn mọi khoảnh khắc với cảm biến chính Sony IMX766 độ phân giải 50 MP hỗ trợ chống rung OIS', 0, 0, 1, 0, 0, 3, NULL),
(14, 'realme 11 8GB 128GB', 7390000, 12, 'Nâng cao trải nghiệm với màn hình Super AMOLED - Màu sắc rực rỡ và độ tương phản cao, hình ảnh sắc nét và chi tiết.\r\nTrang bị camera Prolight 108MP và nhiều tính năng quay chụp - Tạo ra những bức ảnh sắc nét và chân thực nhờ độ phân giải cao.\r\nSử dụng chip MediaTek Helio G99 - Mang lại hiệu suất cao và khả năng xử lý mượt mà.\r\nDung lượng pin lớn 5000 mAh - Sử dụng thoải mái trong thời gian dài mà không lo hết pin', 0, 0, 0, 0, 0, 5, NULL),
(15, 'realme 10 8GB 256GB', 7190000, 30, 'RAM mở rộng lên đến 16GB - Xử lí đa tác vụ mượt mà\r\nGiải trí cực đỉnh - Màn hình AMOLED 90Hz cuộn cuộn lướt và chuyển cảnh khi chơi game không giật lag\r\nXem YouTube liên tục đến 21h với viên pin 5000mAh\r\nThiết kế vi hạt ánh sáng lấp lánh kiêu sa phù hợp với các bạn nữ', 0, 0, 0, 0, 0, 5, NULL),
(16, 'realme 11 Pro (8GB -  256GB)', 11990000, 4, 'Màn hình hiển thị cong đục lỗ ở chính giữa - cao cấp từ trong ra ngoài cùng tần số quét 120Hz.\r\nCông nghệ thu phóng trong cảm biến tiên tiến mang lại ảnh ảnh chi tiết cực kỳ rõ ràng.\r\nVi xử lý MediaTek Dimensity 7050 mang lại hiệu năng mạnh mẽ sẵn sàng chiến các game phổ thông.\r\nThiết kế mặt lưng giả da sang trọng cùng đường chỉ căn giữa và cụm camera hình tròn đầy nổi bật.', 0, 0, 0, 0, 0, 5, NULL),
(17, 'vivo V29E 8GB 256GB', 8990000, 0, 'Hiệu năng vượt trội với chip Snapdragon 695 - Giúp bạn xử lý các tác vụ mượt mà không cần phải lo lắng có bị giật, lag.\r\nMàn hình Sunlight AMOLED 120Hz - Cho hình ảnh sắc nét, màu sắc tươi sáng, trung thực.\r\nPin khủng kèm sạc siêu siêu tốc 44W - Giúp bạn sử dụng thoải mái trong vòng hai ngày.\r\nCụm camera được cải tiến giúp quay video và chụp ra bức ảnh rất tốt, hài hòa, sống động hơn.', 0, 0, 0, 0, 0, 6, NULL),
(18, 'vivo V25 Pro 8GB 128GB', 13990000, 42, 'Thiết kế trẻ trung, mặt lưng đổi màu độc đáo - Đổi màu sắc khi có tia UV chiếu vào\r\nDẫn đầu xu hướng nhiếp ảnh mới - Hệ thống ba camera lên đến 64MP, đi kèm chống rung quang học OIS\r\nHiệu năng mạnh mẽ, xử lý đa tác vụ - Bộ vi xử lý Dimensity 1300, RAM 8GB + Mở rộng 8GB\r\nKhông gian giải trí cực đỉnh - Màn hình AMOLED có kích thước 6.56 inch, 120Hz', 0, 0, 0, 0, 0, 6, NULL),
(19, 'Vivo V27e 8GB 256GB', 8990000, 11, 'Tận hưởng không gian hiển thị đẹp mắt với màn hình AMOLED cùng độ phân giải Full HD+\r\nBắt trọn, lưu giữ mọi khoảnh khắc cùng hệ thống 3 camera sau với nhiều tính năng hiện đại\r\nVi xử lý MediaTek Helio G99 kết hợp cùng RAM 8 GB giúp chinh phục nhiều tác vụ mượt mà\r\nViên pin 4.6000 mAh tích hợp công nghệ sạc nhanh đến 66 W giúp nạp đầy pin trong tích tắc', 0, 0, 1, 0, 0, 6, NULL),
(20, 'Nokia C21 Plus 2GB 32GB', 2390000, 35, 'Thiết kế tinh giản hiện đại, bền bỉ chắc chắn - Chất liệu khung nguyên khối và nhựa cứng\r\nGiải trí sắc nét, sống động từng chi tiết - Màn hình HD+ 6.52 inches\r\nCấu hình ổn định trong phân khúc - Chip Unisoc SC9863A, RAM 2GB\r\nBắt trọn khoảnh khắc - Camera kép 13MP chụp ảnh chi tiết, camera trước 5MP', 0, 0, 0, 0, 0, 7, NULL),
(21, 'Nokia G11 Plus 3GB 32GB', 3390000, 41, 'Camera kép AI 50MP (khẩu độ f/1.8) lấy nét tự động, bắt trọn mọi khoảnh khắc\r\nVi xử lý 8 nhân mạnh mẽ giúp thao tác nhanh chóng mượt mà\r\nDung lượng pin 5000 mAh bền bỉ cùng chế độ siêu tiết kiệm pin\r\nMàn hình 6.5” chuẩn HD+ với tần số quét 90Hz cho chất lượng hiển thị rõ nét, chân thực', 0, 0, 1, 0, 0, 7, NULL),
(22, 'ASUS ROG Phone 7 Ultimate 16GB 512GB', 29990000, 6, 'Chiến game không giới hạn với vi xử lý Snapdragon 8 Gen2 giúp cải thiện hiệu suất và mức tiêu thụ pin\r\nThiết kế hầm hố chuẩn gaming, trang bị tản nhiệt GameCool 7 giúp hạn chế tối đa tình trạng nóng máy\r\nMàn hình 6.78 inches cực lớn, kết hợp tần số quét 165 Hz mang đến trải nghiệm chiến game tuyệt đỉnh\r\nViên pin 6.000 mAh cùng công suất sạc nhanh đến 65 W, hỗ trợ sạc đầy pin mà chỉ mất vỏn vẹn 42 phút', 0, 0, 0, 0, 0, 9, NULL),
(23, 'ASUS ROG Phone 7 16GB 512GB', 24990000, 14, 'Hiệu năng khủng với chip Snapdragon 8 Gen2 cùng RAM 16 GB, giúp xử lý tốt mọi tác vụ hàng ngày\r\nTrải nghiệm thị giác siêu mượt mà và sắc nét nhờ tấm nền AMOLED cùng tần số quét lên đến 165 Hz\r\nHệ thống tản nhiệt cao cấp giúp cải thiện khả năng tản nhiệt cũng như nâng cao hiệu suất chơi game\r\nViên pin 6.000 mAh giúp cung cấp năng lượng cho cả ngày dài, đi kèm sạc nhanh công suất đến 65W', 0, 0, 1, 0, 0, 9, NULL),
(24, 'ASUS ROG Phone 6 Batman 12GB 256GB', 27990000, 46, 'Thiết kế cực ngầu, đậm chất bí ẩn - Ngoại hình độc đáo với k hung viền bằng kim loại, màu sắc ma mị\r\nCấu hình mạnh mẽ chiến mọi tựa game - Snapdragon 8+ Gen 1 cùng RAM 12GB\r\nKhông lo gián đoạn với viên pin lớn 6.000 mAh đi kèm sạc nhanh Quick Charge 5.0 65W\r\nHệ điều hành tuỳ biến theo giao diện người hùng Batman - Tha hồ lựa chọn hình nền động và hiệu ứng âm thanh người hùng', 0, 0, 1, 0, 0, 9, NULL),
(25, 'Nubia RedMagic 8S Pro 5G 12GB 256GB', 19990000, 5, 'Cấu hình mạnh mẽ với Snapdragon 8 Gen 2 - Sẵn sàng chiến các thể loại game mà không lo giật lag.\r\nThiết kế sang trọng, hiện đại cùng những đường nét trang trí thể hiện đúng tính chất của chiếc một chiếc gaming.\r\nTấm nền AMOLED với kích thước 6.8 inch, độ phân giải Full HD+ - Tạo hình ảnh sắc nét, độ chuẩn màu cao.\r\nDung lượng pin lớn 6000 mAh - Đáp ứng tốt nhu cầu sử dụng cả ngày dài.', 0, 0, 0, 0, 0, 10, NULL),
(26, 'Nubia Neo 5G 8GB 256GB', 4990000, 6, 'Tầm nhìn thoải mái, chiến game không lo ngại - Màn hình 6.6 inch cùng tần số quét 120Hz\r\nĐa nhiệm mạnh mẽ, thoải mái sử dụng nhiều tác vụ cùng lúc với RAM mở rộng đến 18GB\r\nHệ thống làm mát chuyên nghiệp với diện tích tản nhiệt 15416mm²\r\nNăng lượng cho cả ngày - Pin 4500mAh và sạc nhanh 22.5W', 0, 0, 1, 0, 0, 10, NULL),
(27, 'TECNO Camon 20', 4990000, 26, 'Thực hiện tốt đa tác vụ cùng lúc với bộ vi xử lý Helio G85 và dung lượng RAM lên đến 8 GB\r\nHệ thống 2 camera sau có độ phân giải lên đến 64 MP giúp bắt trọn mọi khoảnh khắc nổi bật\r\nChiêm ngưỡng hình ảnh chất lượng cao nhờ vào tấm nền AMOLED, độ phân giải Full HD+\r\nViền siêu mỏng kết hợp với màn hình kích thước 6.67 inch cho không gian hiển thị rộng lớn', 0, 0, 0, 0, 0, 11, NULL),
(28, 'TECNO Spark 10 8GB 128GB', 3590000, 16, 'Hệ thống camera độ phân giải cao với camera chính đến 50MP, lưu lại khoảnh khắc rõ nét\r\nDung lượng pin 5000mAh sử dụng cả ngày kết hợp cùng công nghệ sạc nhanh đến 18W\r\nĐa nhiệm mượt mà với RAM 8GB (mở rộng 4GB) + ROM 128GB giúp thoải mái lưu trữ\r\nMàn hình lớn 6.6\" HD+ và tần số quét 90Hz cho trải nghiệm giải trí tốt, chạm lướt mượt mà', 0, 0, 0, 0, 0, 11, NULL),
(29, 'TECNO Spark 10 Pro 8GB 128GB', 3990000, 20, 'Chinh phục nhiều tác vụ một cách mượt mà nhờ bộ vi xử lý Helio G88 cùng RAM 8 GB\r\nTrải nghiệm nhiếp ảnh đỉnh cao với hệ thống camera kép 50 MP và camera selfie 32 MP\r\nMàn hình kích thước lên đến 6.8 inch cùng độ phân giải cao giúp hiển thị rõ nét, đẹp mắt\r\nThiết kế ấn tượng với mặt lưng bóng bẩy giúp người dùng luôn nổi bật trước đám đông', 0, 0, 1, 0, 0, 11, NULL),
(30, 'OnePlus 8T 5G', 18990000, 42, 'Thiết kế cực sang, chuẩn smartphone cao cấp\r\nTrải nghiệm mượt mà, giải trí cực đã - Màn hình AMOLED 6.55 inches\r\nHiệu năng mạnh mẽ, trải nghiệm chơi game mượt mà - Snapdragon 865, RAM 12 GB\r\nCamera đa chức năng ấn tượng - Cảm biến chính 48 MP, đa dạng chế độ chụp', 0, 0, 1, 0, 0, 8, NULL),
(31, 'OnePlus Nord 3 5G 16GB 256GB', 12490000, 12, 'Hiệu suất siêu việt vượt mọi nhu cầu - chip Dimensity 9000 cao cấp, đi kèm RAM 16GB/256GB\r\nNăng lượng cho cả ngày dài - Viên pin lớn 5,000 mAh với hỗ trợ sạc nhanh 80W ấn tượng\r\nKhông gian giải trí cực đỉnh - Màn hình AMOLED có kích thước 6.74 inch, hỗ trợ tần số quét 120Hz\r\nThiết kế trẻ trung và hiện tại phù hợp với mọi cá tính - Viền mỏng án tượng và các cạnh bo tròn đẹp mắt', 0, 0, 0, 0, 0, 8, NULL),
(32, 'OnePlus 11 5G 16GB 256GB', 19990000, 1, 'Chiến game thả ga - Snapdragon 8 Gen 2, hệ thống tản nhiệt VC Cooling System làm mát hiệu quả\r\nĐa nhiệm cực mượt - RAM 16GB, ROM 256GB\r\nGiải trí sống động - Màn hình viền siêu mỏng, 120Hz, độ phân giải 2K\r\nNâng tầm nhiếp ảnh - Camera chính 50MP, lưu giữ màu sắc chân thực, chống rung hiệu quả', 0, 0, 0, 0, 0, 8, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dienthoai_donhang`
--

CREATE TABLE `dienthoai_donhang` (
  `ma_don_hang` int(11) NOT NULL,
  `ma_dienthoai` int(11) NOT NULL,
  `gia_ban` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `dienthoai_donhang`
--

INSERT INTO `dienthoai_donhang` (`ma_don_hang`, `ma_dienthoai`, `gia_ban`, `so_luong`) VALUES
(2, 1, 21610000, 3),
(3, 1, 21610000, 1),
(4, 1, 21610000, 2),
(5, 1, 21610000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `ma_don_hang` int(11) NOT NULL,
  `ho_va_ten` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `so_dien_thoai` varchar(30) NOT NULL,
  `dia_chi` text NOT NULL,
  `ngay_dat_hang` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`ma_don_hang`, `ho_va_ten`, `so_dien_thoai`, `dia_chi`, `ngay_dat_hang`) VALUES
(2, 'Mai Tiến Dũng', '0567250721', 'Bình Hòa 4, Khuê trung, Cẩm Lệ, Đà Nẵng', '2023-12-03'),
(3, 'Lee Thanh Hair', '0932591901', '??????', '2023-12-03'),
(4, 'Ngô Zero', '000000000', 'bbdbdbsbbbbs', '2023-12-03'),
(5, 'Ngô Zero', '000000000', '123 Abc, Khuê Trung, Cẩm Lệ, Đà Nẵng ', '2023-12-03');

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
(5, 1, 8, 1),
(7, 1, 1, 1),
(9, 2, 1, 2),
(10, 2, 2, 1);

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
  `gia_ban` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `ngay_giao_dich` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `lich_su_giao_dich`
--

INSERT INTO `lich_su_giao_dich` (`ma_giao_dich`, `ma_nguoidung`, `ma_dienthoai`, `gia_ban`, `so_luong`, `ngay_giao_dich`) VALUES
(2, 1, 1, 21610000, 3, '2023-12-03'),
(3, 2, 1, 21610000, 1, '2023-12-03'),
(4, 3, 1, 21610000, 2, '2023-12-03'),
(5, 3, 1, 21610000, 1, '2023-12-03');

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
(3, 0, 'ngo_zero', '$2y$10$mTxvYMGOdmrC759C6.YfEui7C3lckXlNeLru/24yTnieAkT3Os7hG', 'Ngô Zero', 'ngozero@gmail.com', '000000000', ''),
(4, 1, '@cps_admin_mtd', '$2y$10$cwnS55m4oYll7WpvQOuAbe533enGAWBulUDbu3KDo0C27ar7l9Q3a', 'Admin', NULL, NULL, NULL);

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

--
-- Đang đổ dữ liệu cho bảng `nhap_dienthoai`
--

INSERT INTO `nhap_dienthoai` (`ma_nhap`, `ma_dienthoai`, `ngay_nhap`, `gia_nhap`, `so_luong_nhap`) VALUES
(1, 1, '2023-12-01', 16500000, 10),
(2, 2, '2023-12-07', 21500000, 10),
(3, 7, '2023-12-07', 15500000, 5),
(4, 8, '2023-12-07', 37000000, 15),
(5, 6, '2023-12-07', 25000000, 7);

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
(12, 8, 'Màn hình chính: 7.82 inches, 2K+ (2268 x 2440 Pixels), OLED, 120Hz, 2800 nit, 1 tỷ màu, Kính UTG\r\nMàn hình phụ: 6.31 inches, FHD+ (1116 x 2484 Pixels), 120Hz, Kính siêu mỏng Nanocrystal'),
(1, 10, '6.4 inches'),
(2, 10, 'AMOLED'),
(3, 10, 'Camera chính: 50 MP, f/1.8\r\nCamera phụ: 8 MP f/2.4\r\nCamera Marco: 2 MP f/2.2'),
(4, 10, '32 MP, f/2.4'),
(5, 10, 'MediaTek Dimensity 1300 8 nhân'),
(6, 10, '8 GB'),
(7, 10, '256 GB'),
(8, 10, 'Li-Po 4500 mAh'),
(9, 10, '2 SIM (Nano-SIM)'),
(10, 10, 'Android 12'),
(11, 10, '1080 x 2400 pixels (FullHD+)'),
(12, 10, 'Kính cường lực Corning Gorilla Glass 5'),
(1, 11, '6.43 inches'),
(2, 11, 'AMOLED'),
(3, 11, 'Camera chính: 108MP, f/1.89\r\nCamera góc siêu rộng: 8MP, f/2.2, FOV 118°\r\nCamera cận cảnh: 2MP, f/2.4'),
(4, 11, '16MP, f/2.45'),
(5, 11, 'MediaTek Helio G96'),
(6, 11, '8 GB'),
(7, 11, '256 GB'),
(8, 11, '5000 mAh'),
(9, 11, '2 SIM (Nano-SIM)'),
(10, 11, 'Android 13'),
(11, 11, '1080 x 2400 pixels (FullHD+)'),
(12, 11, 'Tần số quét 90Hz, Độ sáng: tối đa 700 nit (typ), 1000 nits cực đại (typ), Kính Corning Gorilla Glass 3\r\nChế độ Sunlight, Chế độ đọc sách 3.0'),
(1, 12, '6.73 inches'),
(2, 12, 'AMOLED'),
(3, 12, 'Camera góc rộng: 50 MP, f/1.9, Dual Pixel PDAF, OIS\r\nCamera tele: 50 MP, f/1.9, PDAF, 2x optical zoom\r\nCamera góc siêu rộng: 50 MP, f/2.2, 115˚'),
(4, 12, '32 MP'),
(5, 12, 'Qualcomm SM8450 Snapdragon 8 Gen1'),
(6, 12, '12 GB'),
(7, 12, '256 GB'),
(8, 12, '4600 mAh'),
(9, 12, '2 SIM (Nano-SIM)'),
(10, 12, 'MIUI 13, Android 12'),
(11, 12, '1440 x 3200 pixels (QHD+)'),
(12, 12, 'Tần số quét 120Hz, Tỷ lệ tương phản 8.000.000: 1, HDR10 +, Dolby Vision, Độ sáng tối đa: 1500nit, Corning Gorilla Glass Victus'),
(1, 13, '6.67 inches'),
(2, 13, 'AMOLED'),
(3, 13, 'Camera góc rộng: 50MP, f/1.9, PDAF, OIS\r\nCamera góc siêu rộng: 8 MP, f/1.9, 119˚\r\nCamera macro: 2 MP, f/2.4'),
(4, 13, 'Camera góc rộng: 16 MP'),
(5, 13, 'MediaTek Dimensity 1080 8 nhân'),
(6, 13, '8 GB'),
(7, 13, '256 GB'),
(8, 13, '5.000 mAh'),
(9, 13, '2 SIM (Nano-SIM)'),
(10, 13, 'Android 12'),
(11, 13, '1080 x 2400 pixels (FullHD+)'),
(12, 13, 'Tần số quét: 120Hz\r\nDolby Vision, HDR10+, 500 nit, 900 nit\r\nKính cường lực Corning Gorilla Glass 5'),
(1, 14, '6.4 inches'),
(2, 14, 'Super AMOLED'),
(3, 14, 'Chính Prolight 108MP + Chân dung 2MP'),
(4, 14, '16MP'),
(5, 14, 'Chip Helio G99'),
(6, 14, '8GB + Mở rộng 8GB'),
(7, 14, '128 GB'),
(8, 14, '5.000 mAh'),
(9, 14, '2 SIM (Nano-SIM)'),
(10, 14, 'realme UI 4.0 Trên nền tảng Android 13'),
(11, 14, '1080 x 2400 pixels (FullHD+)'),
(12, 14, '90Hz, dộ sáng tối đa 1000nit, mặt kính Corning Gorilla Glass 5,16.7 triệu màu'),
(1, 15, '6.4 inches'),
(2, 15, 'Super AMOLED'),
(3, 15, 'Camera chính AI: 50MP, f/1.8\r\nCamera chân dung: 2MP, f/2.4'),
(4, 15, '16 MP, f/2.5'),
(5, 15, 'Helio G99 (6nm)'),
(6, 15, '8 GB'),
(7, 15, '256 GB'),
(8, 15, '5.000 mAh'),
(9, 15, '2 SIM (Nano-SIM)'),
(10, 15, 'Android 12, Realme UI 3.0'),
(11, 15, '1080 x 2400 pixels (FullHD+)'),
(12, 15, 'Tần số quét 90 Hz, 16,7 triệu màu, Độ tương phản: 4,000,000:1, kính cường lực: Corning Gorilla Glass 5'),
(1, 16, '6.7 inches'),
(2, 16, 'AMOLED'),
(3, 16, 'Camera góc rộng: 100 MP, f/1.75, 26mm, PDAF, OIS\r\nCamera chiều sâu: 2 MP, f/2.4, 22mm'),
(4, 16, 'Camera góc rộng: 16 MP, f/2.5, 25mm'),
(5, 16, 'Mediatek Dimensity 7050 5G'),
(6, 16, '8 GB'),
(7, 16, '256 GB'),
(8, 16, '5.000 mAh'),
(9, 16, '2 SIM (Nano-SIM)'),
(10, 16, 'Android 13'),
(11, 16, '1080 x 2412 pixels'),
(12, 16, '1.07 tỷ màu, HDR10+, tần số quét 120Hz, 100% DCI-P3'),
(1, 17, '6.67 inches'),
(2, 17, 'AMOLED'),
(3, 17, 'Camera chính: 64MP, f/1.79, OIS\r\nCamera góc siêu rộng: 8MP, f/2.2'),
(4, 17, '50 MP, f/2.0, AF'),
(5, 17, 'Qualcomm Snapdragon 695'),
(6, 17, '8 GB'),
(7, 17, '256 GB'),
(8, 17, '4800 mAh'),
(9, 17, '2 SIM (Nano-SIM)'),
(10, 17, 'Android 13'),
(11, 17, '1080 x 2400 pixels (FullHD+)'),
(12, 17, 'Tốc độ làm mới 120 Hz, độ sáng 1150 nits\r\nGam màu 100% DCI-P3\r\nĐộ bão hòa 107% NTSC\r\nMật độ điểm ảnh 394 ppi'),
(1, 18, '6.56 inches'),
(2, 18, 'AMOLED'),
(3, 18, 'Camera chính 64MP OIS + Góc Rộng 8MP + Siêu Cận 2MP'),
(4, 18, '32MP AF, f/2.45'),
(5, 18, 'MediaTek Dimensity 1300'),
(6, 18, '8GB + Mở rộng 8GB'),
(7, 18, '128 GB'),
(8, 18, '4830 mAh'),
(9, 18, '2 SIM (Nano-SIM)'),
(10, 18, 'Android 12'),
(11, 18, '1080 x 2376 pixels (FullHD+)'),
(12, 18, '120Hz, Độ sáng tối đa: 1300 nits, Kính cường lực Schott Xensation UP'),
(1, 19, '6.62 inches'),
(2, 19, 'AMOLED'),
(3, 19, 'Camera góc rộng: 64MP, f/1.8, PDAF, OIS\r\nCamera macro: 2MP, f/2.4\r\nCamera đo độ sâu: 2MP, f/2.4'),
(4, 19, 'Trước 32MP'),
(5, 19, 'Mediatek MT8781 Helio G99 (6nm)'),
(6, 19, '8 GB'),
(7, 19, '256 GB'),
(8, 19, '4600 mAh'),
(9, 19, '2 SIM (Nano-SIM)'),
(10, 19, 'Funtouch OS 13'),
(11, 19, '1080 x 2400 pixels (FullHD+)'),
(12, 19, 'Tần số quét 120Hz'),
(1, 20, '6.52 inches'),
(2, 20, 'IPS LCD'),
(3, 20, '13 MP + 2 MP'),
(4, 20, '5 MP'),
(5, 20, 'Unisoc SC9863A'),
(6, 20, '2 GB'),
(7, 20, '32 GB'),
(8, 20, '4000 mAh'),
(9, 20, '2 SIM (Nano-SIM)'),
(10, 20, 'Android 11 (Go edition)'),
(11, 20, '720 x 1600 pixel'),
(12, 20, '-'),
(1, 21, '6.51 inches'),
(2, 21, 'TFT LCD'),
(3, 21, 'Chính 50 MP & Phụ 2 MP'),
(4, 21, '8 MP, f/2.0'),
(5, 21, 'Unisoc T606'),
(6, 21, '3 GB'),
(7, 21, '32 GB'),
(8, 21, '5000mAh'),
(9, 21, '2 SIM (Nano-SIM)'),
(10, 21, 'Android™ 12'),
(11, 21, '720 x 1600 pixel'),
(12, 21, 'Tần số quét 90Hz, Độ sáng 400 nits, Mặt kính cong 2.5D'),
(1, 22, '6.78 inches'),
(2, 22, 'AMOLED'),
(3, 22, 'Camera góc rộng: 50 MP, f/1.9\r\nCamera góc siêu rộng: 13 MP\r\nCamera Macro: 5 MP'),
(4, 22, '32 MP'),
(5, 22, 'Qualcomm Snapdragon 8 Gen2'),
(6, 22, '16 GB'),
(7, 22, '512 GB'),
(8, 22, '6000 mAh'),
(9, 22, '2 SIM (Nano-SIM)'),
(10, 22, 'Android 13'),
(11, 22, '1080 x 2448 pixels (FullHD+)'),
(12, 22, 'Corning® Gorilla® Glass Victus, Delta-E < 1, 165Hz'),
(1, 23, '6.78 inches'),
(2, 23, 'AMOLED'),
(3, 23, 'Camera góc rộng: 50 MP, f/1.9\r\nCamera góc siêu rộng: 13 MP\r\nCamera Macro: 5 MP'),
(4, 23, '32 MP'),
(5, 23, 'Qualcomm Snapdragon 8 Gen2'),
(6, 23, '16 GB'),
(7, 23, '512 GB'),
(8, 23, '6.000 mAh'),
(9, 23, '2 SIM (Nano-SIM)'),
(10, 23, 'Android 13'),
(11, 23, '1080 x 2448 pixels (FullHD+)'),
(12, 23, 'Tần số quét 165 Hz\r\nCorning® Gorilla® Glass Victus\r\nDelta-E < 1'),
(1, 24, '6.78 inches'),
(2, 24, 'AMOLED'),
(3, 24, 'Camera góc rộng: 50 MP, f/1.9, 24mm, 1/1.56\", 1.0µm, PDAF\r\nCamera góc cực rộng: 13 MP, f/2.2, 13mm\r\nCamera macro: 5 MP'),
(4, 24, 'Camera góc rộng: 12 MP, 28mm'),
(5, 24, 'Snapdragon 8+ Gen 1 (4 nm)'),
(6, 24, '12 GB'),
(7, 24, '256 GB'),
(8, 24, '6000 mAh'),
(9, 24, '2 SIM (Nano-SIM)'),
(10, 24, 'Android 12'),
(11, 24, '1080 x 2448 pixels (FullHD+)'),
(12, 24, '1 triệu màu, 165 Hz, HDR10+, 800 nits\r\nKính cường lực Corning Gorilla Glass'),
(1, 25, '6.8 inches'),
(2, 25, 'AMOLED'),
(3, 25, 'Camera góc rộng:50 MP, f/1.9, PDAF\r\nCamera góc siêu rộng: 8 MP, f/2.2, 120˚\r\nCamera Macro: 2 MP, f/2.4'),
(4, 25, '16 MP, f/2.0'),
(5, 25, 'Snapdragon 8+ Gen 2'),
(6, 25, '12 GB'),
(7, 25, '256 GB'),
(8, 25, '6000 mAh'),
(9, 25, '2 SIM (Nano-SIM)'),
(10, 25, 'Android 13'),
(11, 25, '1116 x 2480 pixels'),
(12, 25, 'Tần số quét 120Hz, 1 tỷ màu,1300 nits, 100% DCI-P3\r\nCorning Gorilla Glass\r\nĐộ chính xác màu △E＜1'),
(1, 26, '6.6 inches'),
(2, 26, 'IPS LCD'),
(3, 26, '50M AF,f/1.8 +2M, f/2.4'),
(4, 26, '8M, f/2.0, FF'),
(5, 26, 'Chip Unisoc T820 5G'),
(6, 26, '8 GB'),
(7, 26, '256 GB'),
(8, 26, '4500mAh'),
(9, 26, '2 SIM (Nano-SIM)'),
(10, 26, 'Android 13'),
(11, 26, '1080 x 2408 pixels'),
(12, 26, 'Tần số quét 120Hz'),
(1, 27, '6.67 inches'),
(2, 27, 'AMOLED'),
(3, 27, 'Camera góc rộng: 64 MP, f/1.7, 25mm, 1/1.7\", 0.8µm, PDAF\r\nMáy ảnh đo chiều sâu: 2 MP, f/2.4'),
(4, 27, 'Camera góc rộng: 32 MP, f/2.5, 24mm, 1/2.8\", 0.8µm'),
(5, 27, 'Helio G85 (12nm)'),
(6, 27, '8 GB'),
(7, 27, '256 GB'),
(8, 27, '5000 mAh'),
(9, 27, '2 SIM (Nano-SIM)'),
(10, 27, 'Android 13'),
(11, 27, '1080 x 2400 pixels (FullHD+)'),
(12, 27, 'Màn chắn nắng HBM'),
(1, 28, '6.56 inches'),
(2, 28, 'IPS LCD'),
(3, 28, 'Camera góc rộng: 50 MP, 0.7µm, PDAF\r\nCamera đo chiều sâu: 0.08 MP'),
(4, 28, '8 MP'),
(5, 28, 'Mediatek Helio G37 (12 nm)'),
(6, 28, '8 GB'),
(7, 28, '128 GB'),
(8, 28, '5000mAh'),
(9, 28, '2 SIM (Nano-SIM)'),
(10, 28, 'Android 13'),
(11, 28, '720 x 1612 (HD+)'),
(12, 28, 'Tần số quét 90Hz'),
(1, 29, '6.78 inches'),
(2, 29, 'IPS LCD'),
(3, 29, '50MP'),
(4, 29, '32MP'),
(5, 29, 'Helio G88'),
(6, 29, '8 GB'),
(7, 29, '128 GB'),
(8, 29, '5000mAh'),
(9, 29, '2 SIM (Nano-SIM)'),
(10, 29, 'Android™ T'),
(11, 29, '2460x1080 pixels'),
(12, 29, 'Tốc độ làm tươi 90Hz, 580 nit'),
(1, 30, '6.55 inches'),
(2, 30, 'AMOLED'),
(3, 30, 'Chính 48 MP & Phụ 16 MP, 5 MP, 2 MP'),
(4, 30, '16 MP'),
(5, 30, 'Snapdragon 865'),
(6, 30, '12 GB'),
(7, 30, '256 GB'),
(8, 30, '4500 mAh'),
(9, 30, '2 SIM (Nano-SIM)'),
(10, 30, 'Android 11'),
(11, 30, '1080 x 2400 pixels (FullHD+)'),
(12, 30, 'Tần số quét 120Hz, kính cường lực Corning Gorilla Glass 5'),
(1, 31, '6.74 inches'),
(2, 31, 'AMOLED'),
(3, 31, 'Camera góc rộng: 50 MP, f/1.9, PDAF, OIS\r\nCamera góc siêu rộng: 8 MP, f/2.3, 120˚\r\nCamera cận cảnh: 2 MP, f/2.4'),
(4, 31, '16 MP, f/2.5'),
(5, 31, 'Mediatek MT6983 Dimensity 9000 (4 nm)'),
(6, 31, '16 GB'),
(7, 31, '256 GB'),
(8, 31, '5000mAh'),
(9, 31, '2 SIM (Nano-SIM)'),
(10, 31, 'Android 13'),
(11, 31, '1240 x 2772 pixels'),
(12, 31, 'Tần số quét 120Hz, HDR10+\r\nCorning Gorilla Glass 5'),
(1, 32, '6.7 inches'),
(2, 32, 'Super Fluid AMOLED'),
(3, 32, 'Camera góc rộng: 50MP, Laser AF, OIS\r\nCamera tele: 32MP, PDAF, OIS, zoom quang 2x\r\nCamera góc siêu rộng: 48MP, AF'),
(4, 32, 'Camera góc rộng: 16 MP, ƒ/2.45 hỗ trợ EIS'),
(5, 32, 'Snapdragon 8 Gen 2 (4 nm)'),
(6, 32, '16GB + mở rộng 12GB'),
(7, 32, '256 GB'),
(8, 32, '5000 mAh'),
(9, 32, '2 SIM (nano‑SIM và eSIM)'),
(10, 32, 'OxygenOS trên nền tảng Android™ 13'),
(11, 32, '1440 x 3216 pixels (QHD+)'),
(12, 32, 'Corning® Gorilla® Glass Victus, Hỗ trợ sRGB, Display P3, 10-bit Color Depth, HDR10+');

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
  ADD KEY `ma_hang` (`ma_hang`);

--
-- Chỉ mục cho bảng `dienthoai_donhang`
--
ALTER TABLE `dienthoai_donhang`
  ADD KEY `ma_dienthoai` (`ma_dienthoai`),
  ADD KEY `ma_don_hang` (`ma_don_hang`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`ma_don_hang`);

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
  MODIFY `ma_anh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=489;

--
-- AUTO_INCREMENT cho bảng `ban_dienthoai`
--
ALTER TABLE `ban_dienthoai`
  MODIFY `ma_ban` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `ma_binhluan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  MODIFY `ma_danhgia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `dienthoai`
--
ALTER TABLE `dienthoai`
  MODIFY `ma_dienthoai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `ma_don_hang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `ma_giohang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `hang_dienthoai`
--
ALTER TABLE `hang_dienthoai`
  MODIFY `ma_hang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `lich_su_giao_dich`
--
ALTER TABLE `lich_su_giao_dich`
  MODIFY `ma_giao_dich` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `ma_nguoidung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `nhap_dienthoai`
--
ALTER TABLE `nhap_dienthoai`
  MODIFY `ma_nhap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- Các ràng buộc cho bảng `dienthoai_donhang`
--
ALTER TABLE `dienthoai_donhang`
  ADD CONSTRAINT `dienthoai_donhang_ibfk_1` FOREIGN KEY (`ma_dienthoai`) REFERENCES `dienthoai` (`ma_dienthoai`),
  ADD CONSTRAINT `dienthoai_donhang_ibfk_2` FOREIGN KEY (`ma_don_hang`) REFERENCES `donhang` (`ma_don_hang`);

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
