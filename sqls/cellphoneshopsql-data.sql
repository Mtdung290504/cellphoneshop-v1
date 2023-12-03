-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3307
-- Thời gian đã tạo: Th12 03, 2023 lúc 05:16 AM
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
(1, 'iPhone 15 128GB | Chính hãng VN/A', 22990000, 6, 'Thiết kế thời thượng và bền bỉ - Mặt lưng kính được pha màu xu hướng cùng khung viền nhôm bền bỉ\nDynamic Island hiển thị linh động mọi thông báo ngay lập tức giúp bạn nắm bắt mọi thông tin\nChụp ảnh đẹp nức lòng - Camera chính 48MP, Độ phân giải lên đến 4x và Tele 2x chụp chân dung hoàn hảo\nPin dùng cả ngày không lắng lo - Thời gian xem video lên đến 20 giờ và sạc nhanh qua cổng USB-C tiện lợi\nCải tiến hiệu năng vượt bậc - A16 Bionic mạnh mẽ giúp bạn cân mọi tác vụ dù có yêu cầu đồ hoạ cao', 10, 0, 82, 3, 3, 1),
(2, 'iPhone 14 Pro Max 128GB | Chính hãng VN/A', 29990000, 8, 'Màn hình Dynamic Island - Sự biến mất của màn hình tai thỏ thay thế bằng thiết kế viên thuốc, OLED 6,7 inch, hỗ trợ always-on display\r\nCấu hình iPhone 14 Pro Max mạnh mẽ, hiệu năng cực khủng từ chipset A16 Bionic\r\nLàm chủ công nghệ nhiếp ảnh - Camera sau 48MP, cảm biến TOF sống động\r\nPin liền lithium-ion kết hợp cùng công nghệ sạc nhanh cải tiến', 0, 0, 39, 0, 2, 1),
(3, 'iPhone 15 Pro Max 256GB | Chính hãng VN/A', 34990000, 5, 'Thiết kế khung viền từ titan chuẩn hàng không vũ trụ - Cực nhẹ, bền cùng viền cạnh mỏng cầm nắm thoải mái\r\nHiệu năng Pro chiến game thả ga - Chip A17 Pro mang lại hiệu năng đồ họa vô cùng sống động và chân thực\r\nThoả sức sáng tạo và quay phim chuyên nghiệp - Cụm 3 camera sau đến 48MP và nhiều chế độ tiên tiến\r\nNút tác vụ mới giúp nhanh chóng kích hoạt tính năng yêu thích của bạn', 0, 0, 5, 0, 0, 1),
(4, 'Samsung Galaxy S23 Ultra 256GB', 31990000, 30, 'Thoả sức chụp ảnh, quay video chuyên nghiệp - Camera đến 200MP, chế độ chụp đêm cải tiến, bộ xử lí ảnh thông minh\r\nChiến game bùng nổ - chip Snapdragon 8 Gen 2 8 nhân tăng tốc độ xử lí, màn hình 120Hz, pin 5.000mAh\r\nNâng cao hiệu suất làm việc với Siêu bút S Pen tích hợp, dễ dàng đánh dấu sự kiện từ hình ảnh hoặc video\r\nThiết kế bền bỉ, thân thiện - Màu sắc lấy cảm hứng từ thiên nhiên, chất liệu kính và lớp phim phủ PET tái chế', 0, 0, 13, 0, 1, 2),
(5, 'Samsung Galaxy Z Flip5 512GB', 29990000, 43, 'Thần thái nổi bật, cân mọi phong cách- Lấy cảm hứng từ thiên nhiên với màu sắc thời thượng, xu hướng\r\nThiết kế thu hút ánh nhìn - Gập không kẽ hỡ, dẫn đầu công nghệ bản lề Flex\r\nTuyệt tác selfie thoả sức sáng tạo - Camera sau hỗ trợ AI xử lí cực sắc nét ngay cả trên màn hình ngoài\r\nBền bỉ bất chấp mọi tình huống - Đạt chuẩn kháng bụi và nước IP68 cùng chất liệu nhôm Armor Aluminum giúp hạn chế cong và xước', 0, 0, 3, 0, 0, 2),
(6, 'Samsung Galaxy S22 Ultra (12GB - 256GB)', 33990000, 49, 'Vi xử lý mạnh mẽ nhất Galaxy - Snapdragon 8 Gen 1 (4 nm)\r\nCamera mắt thần bóng đêm Nightography - Chụp đêm cực đỉnh\r\nS Pen đầu tiên trên Galaxy S - Độ trễ thấp, dễ thao tác\r\nDung lượng pin bất chấp ngày đêm - Viên pin 5000mAh, sạc nhanh 45W', 0, 0, 14, 2, 3, 2),
(7, 'OPPO Find N3 Flip 12GB 256GB', 22990000, 0, 'Thiết kế gập linh hoạt, đường cong 3D, đường cắt kim cương - biểu tượng của sự phong cách giúp bạn luôn toả sáng\nĐiện thoại gập sở hữu 3 camera sắc nét - Chụp hình đơn giản hơn với Chế độ Flexform\nMàn hình phụ vạn năng - dễ dàng thao tác các tác vụ ngay trên màn hình phụ và tuỳ biến theo sở thích\nMàn hình sống động đáng kinh ngạc - Kích thước 6.8i nches, hỗ trợ 120Hz, HDR10+', 0, 0, 5, 0, 0, 4),
(8, 'OPPO Find N3 16GB 512GB', 44990000, 0, 'Bậc thầy thiết kế, siêu mỏng nhe - Mỏng chỉ 239g, nhẹ chỉ 5.8mm với nếp gấp tàng hình\r\nRực rõ mọi màn hình hiển thị - Kích thước lên đến 7.8mm, độ phân giải 2K+ cùng tần số quét 120Hz mượt mà\r\nBậc thầy nhiếp ảnh - 3 camera hàng đầu đến 64MP kết hợp cùng đa dạng chế độ chụp hoàn hảo\r\nNâng cao hiệu suất sử dụng - Chip MediaTek Dimensity 9200 5G mạnh mẽ cùng hàng loạt tính năng đa nhiệm thông tinh', 0, 0, 5, 0, 1, 4);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `dienthoai`
--
ALTER TABLE `dienthoai`
  ADD PRIMARY KEY (`ma_dienthoai`),
  ADD UNIQUE KEY `ten_dienthoai` (`ten_dienthoai`),
  ADD KEY `ma_hang` (`ma_hang`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `dienthoai`
--
ALTER TABLE `dienthoai`
  MODIFY `ma_dienthoai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `dienthoai`
--
ALTER TABLE `dienthoai`
  ADD CONSTRAINT `dienthoai_ibfk_1` FOREIGN KEY (`ma_hang`) REFERENCES `hang_dienthoai` (`ma_hang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
