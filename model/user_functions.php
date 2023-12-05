<?php
    function delete_from_cookie_cart(int $phone_id) {
        /* Nếu tìm thấy mã điện thoại thì xóa đi, sau đó cập nhật cookie */
        $cart = isset($_COOKIE['cart']) ? json_decode($_COOKIE['cart'], true) : '???';
        if($cart == '???') return;
        foreach ($cart as $key => &$item) {
            if ($item[0] === $phone_id) {
                unset($cart[$key]);
            }
        } 
        $cartJson = json_encode($cart);
        setcookie('cart', $cartJson, time() + (365 * 24 * 60 * 60), '/');   
    }

    function find_from_cookie_cart(int $phone_id) {
        /* Tìm điện thoại trong cookie cart theo mã */
        $rs = false;
        if(isset($_COOKIE['cart'])) {
            $cart = json_decode($_COOKIE['cart'], true);
            foreach ($cart as &$item) {
                if ($item[0] === $phone_id) {
                    return true;
                }
            }
        }
        return $rs;
    }

    function update_cookie_cart(int $phone_id, int $phone_count) {
        /* Nếu không tìm thấy điện thoại có id được cung cấp thì thêm, có thì cập nhật */
        $cart = isset($_COOKIE['cart']) ? json_decode($_COOKIE['cart'], true) : [];
        $found = false;
        foreach ($cart as &$item) {
            if ($item[0] === $phone_id) {
                $item[1] = $phone_count;
                $found = true;
                break;
            }
        }
        if (!$found) {
            $newItem = [$phone_id, $phone_count];
            $cart[] = $newItem;
        }
        $cartJson = json_encode($cart);
        setcookie('cart', $cartJson, time() + (365 * 24 * 60 * 60), '/');
    }

    function delete_from_db_cart(int $user_id, int $phone_id) {
        global $conn;
        $query = "SELECT*FROM giohang WHERE ma_nguoidung = ? AND ma_dienthoai = ?"; 
        if(executeQuery($conn, $query, [$user_id, $phone_id])==null) {return;}
        executeQuery($conn, "DELETE FROM giohang WHERE ma_nguoidung = ? AND ma_dienthoai = ?", [$user_id, $phone_id]);
    }

    function update_db_cart(int $user_id, int $phone_id, int $phone_count = 1) {
        /* tìm không có kq thì thêm, nếu có thì cập nhật */
        global $conn;
        $query = "SELECT*FROM giohang WHERE ma_nguoidung = ? AND ma_dienthoai = ?";
        if(executeQuery($conn, $query, [$user_id, $phone_id])!=null) {
            executeQuery($conn, "UPDATE giohang SET so_luong = ? WHERE ma_nguoidung = ? AND ma_dienthoai = ?", [$phone_count, $user_id, $phone_id]);
        } else {
            executeQuery($conn, "INSERT INTO giohang (ma_nguoidung, ma_dienthoai, so_luong) VALUE (?, ?, ?)", [$user_id, $phone_id, $phone_count]);
        }
    }

    function user_do_comment(int $user_id, int $phone_id, string $comment) {
        /* insert vào bảng comment, tăng lượt comment ở bảng điện thoại */
        global $conn;
        $luot_comment_goc = executeQuery($conn, "SELECT luot_binh_luan FROM dienthoai WHERE ma_dienthoai = ?", [$phone_id])[0]['luot_binh_luan'];
        if(executeQuery($conn, "INSERT INTO binhluan (ma_nguoidung, ma_dienthoai, noi_dung) VALUE (?, ?, ?)", [$user_id, $phone_id, $comment])) {
            $luot_comment_goc++;
            executeQuery($conn, "UPDATE dienthoai SET luot_binh_luan = ? WHERE ma_dienthoai = ?", [$luot_comment_goc, $phone_id]);
        }
    }

    function user_do_rate(int $user_id, int $phone_id, int $value) {
        /*
            kiểm tra xem ng dùng đã đánh giá chưa
            nếu chưa thì insert vào bảng đánh giá, tăng lượt đánh giá ở bảng điện thoại.
            nếu rồi thì cập nhật vào bảng đánh giá, không tăng lượt đánh giá.
        */
        global $conn;
        $luot_danh_gia_goc_data = executeQuery($conn, "SELECT * FROM dienthoai WHERE ma_dienthoai = ?", [$phone_id])[0]['luot_danh_gia'];
        $luot_danh_gia_goc = ($luot_danh_gia_goc_data!=null) ? $luot_danh_gia_goc_data : 0;
        if(executeQuery($conn, "SELECT * FROM danhgia WHERE ma_nguoidung = ? AND ma_dienthoai = ?", [$user_id, $phone_id])) {
            executeQuery($conn, "UPDATE danhgia SET gia_tri = ? WHERE ma_nguoidung = ? AND ma_dienthoai = ?", [$value, $user_id, $phone_id]);
        } else {
            if(executeQuery($conn, "INSERT INTO danhgia (ma_nguoidung, ma_dienthoai, gia_tri) VALUE (?, ?, ?)", [$user_id, $phone_id, $value])) {
                $luot_danh_gia_goc++;
                executeQuery($conn, "UPDATE dienthoai SET luot_danh_gia = ? WHERE ma_dienthoai = ?", [$luot_danh_gia_goc, $phone_id]);
            }
        }
        return $luot_danh_gia_goc;
    }

    function user_do_checkout(int $user_id, array $phone_id_and_count, string $ho_ten, string $sdt, string $diachi) {
        global $conn;
        //Lấy ngày hiên tại
        $current_date = date("Y-m-d");

        //Thêm đơn hàng vào bảng và lấy mã đơn hàng.
        executeQuery($conn, "INSERT INTO donhang (ho_va_ten, so_dien_thoai, dia_chi, ngay_dat_hang) VALUE (?, ?, ?, ?)", [$ho_ten, $sdt, $diachi, $current_date]);
        $ma_don_hang = $conn->insert_id;

        //Lặp qua các sản phẩm cần xử lý.
        foreach ($phone_id_and_count as $ma_dienthoai => $so_luong) {
            $dienthoai = executeQuery($conn, "SELECT * FROM dienthoai WHERE ma_dienthoai = ?", [$ma_dienthoai])[0];

            //Lấy số lượng điện thoại tồn kho, tính toán số lượng mới.
            $so_luong_goc = $dienthoai['ton_kho'];
            $so_luong_moi = $so_luong_goc - $so_luong;
            
            //Lấy số lượng điện thoại đã bán.
            $da_ban_goc = $dienthoai['da_ban'];
            $da_ban_moi = $da_ban_goc + $so_luong;

            //Lấy giá bán điện thoại (Vì giá có thể thay đổi theo thời gian.)
            $gia_ban = executeQuery($conn, "SELECT gia_ban_dienthoai, giam_gia_dienthoai FROM dienthoai WHERE ma_dienthoai = ?", [$ma_dienthoai])[0];
            if($gia_ban) {
                $gia_ban = getDiscountedPrice($gia_ban['gia_ban_dienthoai'], $gia_ban['giam_gia_dienthoai']);
            }

            //Insert vào bảng ban_dienthoai để lấy số liệu thống kê doanh thu.
            executeQuery($conn, "INSERT INTO ban_dienthoai (ma_dienthoai, ngay_ban, so_luong_ban, gia_ban) VALUE (?, ?, ?, ?)", [$ma_dienthoai, $current_date, $so_luong, $gia_ban]);
            //Insert vào bảng lich_su_giao_dich để người dùng kiểm tra.
            executeQuery($conn, "INSERT INTO lich_su_giao_dich (ma_nguoidung, ma_dienthoai, gia_ban, so_luong, ngay_giao_dich) VALUE (?, ?, ?, ?, ?)", [$user_id, $ma_dienthoai, $gia_ban, $so_luong, $current_date]);
            //Insert vào bảng don_hang để admin truy vấn khi cần.
            executeQuery($conn, "INSERT INTO dienthoai_donhang (ma_don_hang, ma_dienthoai, gia_ban, so_luong) VALUE (?, ?, ?, ?)", [$ma_don_hang, $ma_dienthoai, $gia_ban, $so_luong]);
            //Set tồn kho mới vào bảng điện thoại.
            executeQuery($conn, "UPDATE dienthoai SET ton_kho = ?, da_ban = ? WHERE ma_dienthoai = ?", [$so_luong_moi, $da_ban_moi, $ma_dienthoai]); 
            //Xóa sản phẩm khỏi giỏ hàng người dùng
            executeQuery($conn, "DELETE FROM giohang WHERE ma_nguoidung = ? AND ma_dienthoai = ?", [$user_id, $ma_dienthoai]);
        }
    }

    function guest_do_checkout() {
        //
    }
?>