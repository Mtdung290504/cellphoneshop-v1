<?php
require_once __DIR__."/../model/classes.php";
require_once __DIR__."/../model/database.php";
require_once __DIR__."/../model/manage_functions.php";
require_once __DIR__."/../utils/util.php";

$s = new Specifications(
"6.8 inches", 
"AMOLED", 
"Camera góc rộng:50 MP, f/1.9, PDAF
Camera góc siêu rộng: 8 MP, f/2.2, 120˚
Camera Macro: 2 MP, f/2.4", 
"16 MP, f/2.0",
"Snapdragon 8+ Gen 2", 
"12 GB", 
"256 GB", 
"6000 mAh",
"2 SIM (Nano-SIM)", 
"Android 13", 
"1116 x 2480 pixels", 
"Tần số quét 120Hz, 1 tỷ màu,1300 nits, 100% DCI-P3
Corning Gorilla Glass
Độ chính xác màu △E＜1",
);
$p = new Phone(
"Nubia RedMagic 8S Pro 5G 12GB 256GB", 
19990000, 
10, 
5,
"Cấu hình mạnh mẽ với Snapdragon 8 Gen 2 - Sẵn sàng chiến các thể loại game mà không lo giật lag.
Thiết kế sang trọng, hiện đại cùng những đường nét trang trí thể hiện đúng tính chất của chiếc một chiếc gaming.
Tấm nền AMOLED với kích thước 6.8 inch, độ phân giải Full HD+ - Tạo hình ảnh sắc nét, độ chuẩn màu cao.
Dung lượng pin lớn 6000 mAh - Đáp ứng tốt nhu cầu sử dụng cả ngày dài.", 
["nubia_redmagic_8s_pro_5g_12gb_256gb-1.jpg","nubia_redmagic_8s_pro_5g_12gb_256gb-2.jpg","nubia_redmagic_8s_pro_5g_12gb_256gb-3.jpg","nubia_redmagic_8s_pro_5g_12gb_256gb-4.jpg","nubia_redmagic_8s_pro_5g_12gb_256gb-5.jpg","nubia_redmagic_8s_pro_5g_12gb_256gb-6.jpg","nubia_redmagic_8s_pro_5g_12gb_256gb-7.jpg","nubia_redmagic_8s_pro_5g_12gb_256gb-8.jpg","nubia_redmagic_8s_pro_5g_12gb_256gb-9.jpg","nubia_redmagic_8s_pro_5g_12gb_256gb-10.jpg"], 
$s
);
add_phone($p);
unset($s);
unset($p);

$s = new Specifications(
"6.6 inches", 
"IPS LCD", 
"50M AF,f/1.8 +2M, f/2.4", 
"8M, f/2.0, FF",
"Chip Unisoc T820 5G", 
"8 GB", 
"256 GB", 
"4500mAh",
"2 SIM (Nano-SIM)", 
"Android 13", 
"1080 x 2408 pixels", 
"Tần số quét 120Hz",
);
$p = new Phone(
"Nubia Neo 5G 8GB 256GB", 
4990000, 
10, 
6,
"Tầm nhìn thoải mái, chiến game không lo ngại - Màn hình 6.6 inch cùng tần số quét 120Hz
Đa nhiệm mạnh mẽ, thoải mái sử dụng nhiều tác vụ cùng lúc với RAM mở rộng đến 18GB
Hệ thống làm mát chuyên nghiệp với diện tích tản nhiệt 15416mm²
Năng lượng cho cả ngày - Pin 4500mAh và sạc nhanh 22.5W", 
["nubia_neo_5g_8gb_256gb-1.jpg","nubia_neo_5g_8gb_256gb-2.jpg","nubia_neo_5g_8gb_256gb-3.jpg","nubia_neo_5g_8gb_256gb-4.jpg","nubia_neo_5g_8gb_256gb-5.jpg","nubia_neo_5g_8gb_256gb-6.jpg","nubia_neo_5g_8gb_256gb-7.jpg","nubia_neo_5g_8gb_256gb-8.jpg","nubia_neo_5g_8gb_256gb-9.jpg","nubia_neo_5g_8gb_256gb-10.jpg"], 
$s
);
add_phone($p);
unset($s);
unset($p);

$s = new Specifications(
"6.67 inches", 
"AMOLED", 
"Camera góc rộng: 64 MP, f/1.7, 25mm, 1/1.7\", 0.8µm, PDAF
Máy ảnh đo chiều sâu: 2 MP, f/2.4", 
"Camera góc rộng: 32 MP, f/2.5, 24mm, 1/2.8\", 0.8µm",
"Helio G85 (12nm)", 
"8 GB", 
"256 GB", 
"5000 mAh",
"2 SIM (Nano-SIM)", 
"Android 13", 
"1080 x 2400 pixels (FullHD+)", 
"Màn chắn nắng HBM",
);
$p = new Phone(
"TECNO Camon 20", 
4990000, 
11, 
26,
"Thực hiện tốt đa tác vụ cùng lúc với bộ vi xử lý Helio G85 và dung lượng RAM lên đến 8 GB
Hệ thống 2 camera sau có độ phân giải lên đến 64 MP giúp bắt trọn mọi khoảnh khắc nổi bật
Chiêm ngưỡng hình ảnh chất lượng cao nhờ vào tấm nền AMOLED, độ phân giải Full HD+
Viền siêu mỏng kết hợp với màn hình kích thước 6.67 inch cho không gian hiển thị rộng lớn", 
["tecno_camon_20-1.jpg","tecno_camon_20-2.jpg","tecno_camon_20-3.jpg","tecno_camon_20-4.jpg","tecno_camon_20-5.jpg","tecno_camon_20-6.jpg","tecno_camon_20-7.jpg","tecno_camon_20-8.jpg","tecno_camon_20-9.jpg","tecno_camon_20-10.jpg"], 
$s
);
add_phone($p);
unset($s);
unset($p);

$s = new Specifications(
"6.56 inches", 
"IPS LCD", 
"Camera góc rộng: 50 MP, 0.7µm, PDAF
Camera đo chiều sâu: 0.08 MP", 
"8 MP",
"Mediatek Helio G37 (12 nm)", 
"8 GB", 
"128 GB", 
"5000mAh",
"2 SIM (Nano-SIM)", 
"Android 13", 
"720 x 1612 (HD+)", 
"Tần số quét 90Hz",
);
$p = new Phone(
"TECNO Spark 10 8GB 128GB", 
3590000, 
11, 
16,
"Hệ thống camera độ phân giải cao với camera chính đến 50MP, lưu lại khoảnh khắc rõ nét
Dung lượng pin 5000mAh sử dụng cả ngày kết hợp cùng công nghệ sạc nhanh đến 18W
Đa nhiệm mượt mà với RAM 8GB (mở rộng 4GB) + ROM 128GB giúp thoải mái lưu trữ
Màn hình lớn 6.6\" HD+ và tần số quét 90Hz cho trải nghiệm giải trí tốt, chạm lướt mượt mà", 
["tecno_spark_10_8gb_128gb-1.jpg","tecno_spark_10_8gb_128gb-2.jpg","tecno_spark_10_8gb_128gb-3.jpg","tecno_spark_10_8gb_128gb-4.jpg","tecno_spark_10_8gb_128gb-5.jpg","tecno_spark_10_8gb_128gb-6.jpg"], 
$s
);
add_phone($p);
unset($s);
unset($p);

$s = new Specifications(
"6.78 inches", 
"IPS LCD", 
"50MP", 
"32MP",
"Helio G88", 
"8 GB", 
"128 GB", 
"5000mAh",
"2 SIM (Nano-SIM)", 
"Android™ T", 
"2460x1080 pixels", 
"Tốc độ làm tươi 90Hz, 580 nit",
);
$p = new Phone(
"TECNO Spark 10 Pro 8GB 128GB", 
3990000, 
11, 
20,
"Chinh phục nhiều tác vụ một cách mượt mà nhờ bộ vi xử lý Helio G88 cùng RAM 8 GB
Trải nghiệm nhiếp ảnh đỉnh cao với hệ thống camera kép 50 MP và camera selfie 32 MP
Màn hình kích thước lên đến 6.8 inch cùng độ phân giải cao giúp hiển thị rõ nét, đẹp mắt
Thiết kế ấn tượng với mặt lưng bóng bẩy giúp người dùng luôn nổi bật trước đám đông", 
["tecno_spark_10_pro_8gb_128gb-1.jpg","tecno_spark_10_pro_8gb_128gb-2.jpg","tecno_spark_10_pro_8gb_128gb-3.jpg","tecno_spark_10_pro_8gb_128gb-4.jpg","tecno_spark_10_pro_8gb_128gb-5.jpg","tecno_spark_10_pro_8gb_128gb-6.jpg","tecno_spark_10_pro_8gb_128gb-7.jpg","tecno_spark_10_pro_8gb_128gb-8.jpg","tecno_spark_10_pro_8gb_128gb-9.jpg","tecno_spark_10_pro_8gb_128gb-10.jpg"], 
$s
);
add_phone($p);
unset($s);
unset($p);

$s = new Specifications(
"6.55 inches", 
"AMOLED", 
"Chính 48 MP & Phụ 16 MP, 5 MP, 2 MP", 
"16 MP",
"Snapdragon 865", 
"12 GB", 
"256 GB", 
"4500 mAh",
"2 SIM (Nano-SIM)", 
"Android 11", 
"1080 x 2400 pixels (FullHD+)", 
"Tần số quét 120Hz, kính cường lực Corning Gorilla Glass 5",
);
$p = new Phone(
"OnePlus 8T 5G", 
18990000, 
8, 
42,
"Thiết kế cực sang, chuẩn smartphone cao cấp
Trải nghiệm mượt mà, giải trí cực đã - Màn hình AMOLED 6.55 inches
Hiệu năng mạnh mẽ, trải nghiệm chơi game mượt mà - Snapdragon 865, RAM 12 GB
Camera đa chức năng ấn tượng - Cảm biến chính 48 MP, đa dạng chế độ chụp", 
["oneplus_8t_5g-1.jpg","oneplus_8t_5g-2.jpg","oneplus_8t_5g-3.jpg","oneplus_8t_5g-4.jpg","oneplus_8t_5g-5.jpg"], 
$s
);
add_phone($p);
unset($s);
unset($p);

$s = new Specifications(
"6.74 inches", 
"AMOLED", 
"Camera góc rộng: 50 MP, f/1.9, PDAF, OIS
Camera góc siêu rộng: 8 MP, f/2.3, 120˚
Camera cận cảnh: 2 MP, f/2.4", 
"16 MP, f/2.5",
"Mediatek MT6983 Dimensity 9000 (4 nm)", 
"16 GB", 
"256 GB", 
"5000mAh",
"2 SIM (Nano-SIM)", 
"Android 13", 
"1240 x 2772 pixels", 
"Tần số quét 120Hz, HDR10+
Corning Gorilla Glass 5",
);
$p = new Phone(
"OnePlus Nord 3 5G 16GB 256GB", 
12490000, 
8, 
12,
"Hiệu suất siêu việt vượt mọi nhu cầu - chip Dimensity 9000 cao cấp, đi kèm RAM 16GB/256GB
Năng lượng cho cả ngày dài - Viên pin lớn 5,000 mAh với hỗ trợ sạc nhanh 80W ấn tượng
Không gian giải trí cực đỉnh - Màn hình AMOLED có kích thước 6.74 inch, hỗ trợ tần số quét 120Hz
Thiết kế trẻ trung và hiện tại phù hợp với mọi cá tính - Viền mỏng án tượng và các cạnh bo tròn đẹp mắt", 
["oneplus_nord_3_5g_16gb_256gb-1.jpg","oneplus_nord_3_5g_16gb_256gb-2.jpg","oneplus_nord_3_5g_16gb_256gb-3.jpg","oneplus_nord_3_5g_16gb_256gb-4.jpg","oneplus_nord_3_5g_16gb_256gb-5.jpg","oneplus_nord_3_5g_16gb_256gb-6.jpg","oneplus_nord_3_5g_16gb_256gb-7.jpg","oneplus_nord_3_5g_16gb_256gb-8.jpg","oneplus_nord_3_5g_16gb_256gb-9.jpg","oneplus_nord_3_5g_16gb_256gb-10.jpg"], 
$s
);
add_phone($p);
unset($s);
unset($p);

$s = new Specifications(
"6.7 inches", 
"Super Fluid AMOLED", 
"Camera góc rộng: 50MP, Laser AF, OIS
Camera tele: 32MP, PDAF, OIS, zoom quang 2x
Camera góc siêu rộng: 48MP, AF", 
"Camera góc rộng: 16 MP, ƒ/2.45 hỗ trợ EIS",
"Snapdragon 8 Gen 2 (4 nm)", 
"16GB + mở rộng 12GB", 
"256 GB", 
"5000 mAh",
"2 SIM (nano‑SIM và eSIM)", 
"OxygenOS trên nền tảng Android™ 13", 
"1440 x 3216 pixels (QHD+)", 
"Corning® Gorilla® Glass Victus, Hỗ trợ sRGB, Display P3, 10-bit Color Depth, HDR10+",
);
$p = new Phone(
"OnePlus 11 5G 16GB 256GB", 
19990000, 
8, 
1,
"Chiến game thả ga - Snapdragon 8 Gen 2, hệ thống tản nhiệt VC Cooling System làm mát hiệu quả
Đa nhiệm cực mượt - RAM 16GB, ROM 256GB
Giải trí sống động - Màn hình viền siêu mỏng, 120Hz, độ phân giải 2K
Nâng tầm nhiếp ảnh - Camera chính 50MP, lưu giữ màu sắc chân thực, chống rung hiệu quả", 
["oneplus_11_5g_16gb_256gb-1.jpg","oneplus_11_5g_16gb_256gb-2.jpg","oneplus_11_5g_16gb_256gb-3.jpg","oneplus_11_5g_16gb_256gb-4.jpg","oneplus_11_5g_16gb_256gb-5.jpg","oneplus_11_5g_16gb_256gb-6.jpg","oneplus_11_5g_16gb_256gb-7.jpg","oneplus_11_5g_16gb_256gb-8.jpg","oneplus_11_5g_16gb_256gb-9.jpg","oneplus_11_5g_16gb_256gb-10.jpg"], 
$s
);
add_phone($p);
unset($s);
unset($p);
?>