-- Truy vấn giỏ hàng
SELECT giohang.ma_dienthoai, giohang.so_luong, dienthoai.ten_dienthoai, dienthoai.gia_ban_dienthoai, anh_dienthoai.link_anh, thong_so_ky_thuat_dienthoai.*
FROM giohang
JOIN dienthoai ON giohang.ma_dienthoai = dienthoai.ma_dienthoai
JOIN anh_dienthoai ON giohang.ma_dienthoai = anh_dienthoai.ma_dienthoai
JOIN thong_so_ky_thuat_dienthoai ON giohang.ma_dienthoai = thong_so_ky_thuat_dienthoai.ma_dienthoai
WHERE giohang.ma_nguoidung = <ma_nguoidung>;