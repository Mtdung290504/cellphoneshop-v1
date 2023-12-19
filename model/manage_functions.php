<?php
    function add_phone(Phone $phone) {
        global $conn;
        //Insert vao bang dienthoai
        $query = "INSERT INTO dienthoai(ten_dienthoai, gia_ban_dienthoai, giam_gia_dienthoai, mo_ta_dienthoai, ma_hang)
                    VALUE (?,?,?,?,?);";
        $params = [$phone->name, $phone->price, $phone->discount, $phone->decription, $phone->firm_id];
        executeQuery($conn, $query, $params);
        unset($query);
        unset($params);

        //Lay ID cua dien thoai vua them
        $phone_id = $conn->insert_id;

        //Insert vao bang thong_so_ky_thuat_dienthoai
        $query = "INSERT INTO thong_so_ky_thuat_dienthoai(ma_thong_so, ma_dienthoai, gia_tri)
                    VALUES (1, $phone_id, ?), (2, $phone_id, ?), (3, $phone_id, ?), (4, $phone_id, ?),
                           (5, $phone_id, ?), (6, $phone_id, ?), (7, $phone_id, ?), (8, $phone_id, ?),
                           (9, $phone_id, ?), (10, $phone_id, ?), (11, $phone_id, ?), (12, $phone_id, ?);";
        $params = [
            $phone->specifis->screen_size,
            $phone->specifis->screen_technology,
            $phone->specifis->behind_cam,
            $phone->specifis->front_cam,
            $phone->specifis->chipset,
            $phone->specifis->ram,
            $phone->specifis->internal_memory,
            $phone->specifis->pin,
            $phone->specifis->sim,
            $phone->specifis->os,
            $phone->specifis->screen_resolution,
            $phone->specifis->screen_feature
        ];
        executeQuery($conn, $query, $params);
        unset($query);
        unset($params);
        
        //Insert vao bang anh_dienthoai
        $query = "INSERT INTO anh_dienthoai (ma_dienthoai, link_anh) VALUES";
        $params = [];
        foreach ($phone->image_links as $value) {
            $query .= " ($phone_id, ?),";
            $params[] = $value;
        }
        $query = substr_replace($query, ';', strlen($query)-1, 1);
        executeQuery($conn, $query, $params);
    }

    function update_phone(int $phone_id, Phone $new_phone) {
        global $conn;
        executeQuery($conn, "UPDATE dienthoai SET
            ten_dienthoai = ?, gia_ban_dienthoai = ?,
            giam_gia_dienthoai = ?, mo_ta_dienthoai = ?,
            ma_hang = ? WHERE ma_dienthoai = ?
        ", [$new_phone->name, $new_phone->price, $new_phone->discount, 
            $new_phone->decription, $new_phone->firm_id, $phone_id]);
        $spc = $new_phone->specifis;
        $spc_id = 1;
        foreach ($spc as $value) {
            executeQuery($conn, 
                "UPDATE thong_so_ky_thuat_dienthoai SET gia_tri = ? WHERE ma_thong_so = ? AND ma_dienthoai = ?", 
                [$value, $spc_id, $phone_id]
            );
            $spc_id++;
        }
    }

    function delete_phone(int $phone_id) {
        /**
         * Xóa ảnh
         * Cập nhật trường da_xoa của bảng dienthoai
         * Xóa dữ liệu của điện thoại ở bảng thong_so_ky_thuat_dienthoai
         * Xóa dữ liệu của điện thoại ở bảng anh_dienthoai trừ hình ảnh đầu tiên.
         * Xóa dữ liệu bình luận
         * Xóa dữ liệu đánh giá
         * Xóa dữ liệu giỏ hàng
         */
        global $conn;
        $da_xoa = executeQuery($conn, "SELECT da_xoa FROM dienthoai WHERE ma_dienthoai = ?", [$phone_id])[0]['da_xoa'];
        if($da_xoa) {
            return;
        }

        $link_anh_data = executeQuery($conn, "SELECT link_anh FROM anh_dienthoai WHERE ma_dienthoai = ? ORDER BY ma_anh LIMIT 1, 100000", [$phone_id]);
        foreach ($link_anh_data as $link_anh) {
            $file_path = getUrlProductImage($link_anh['link_anh']);
            if (file_exists($file_path)) {
                if (unlink($file_path)) {
                    echo '<script>console.log("Xóa file '.$file_path.' thành công.")</script>';
                } else {
                    echo '<script>console.log("Xóa file '.$file_path.' thất bại.")</script>';
                }
            } else {
                echo '<script>console.log("'.$file_path.' Không tồn tại.")</script>';
            }
        }

        $sql1 = "UPDATE dienthoai SET da_xoa = 1 WHERE ma_dienthoai = ?";
        $sql2 = "DELETE FROM thong_so_ky_thuat_dienthoai WHERE ma_dienthoai = ?";
        $sql3 = "
            DELETE a
            FROM anh_dienthoai a
            JOIN (
                SELECT ma_anh
                FROM anh_dienthoai 
                WHERE ma_dienthoai = ?
                ORDER BY ma_anh 
                LIMIT 1, 1000000
            ) b ON a.ma_anh = b.ma_anh
            WHERE a.ma_dienthoai = ?;
        ";
        $sql4 = "DELETE FROM danhgia WHERE ma_dienthoai = ?";
        $sql5 = "DELETE FROM binhluan WHERE ma_dienthoai = ?";
        $sql6 = "DELETE FROM giohang WHERE ma_dienthoai = ?";
        $params12 = [$phone_id];
        $params3 = [$phone_id, $phone_id];
        executeQuery($conn, $sql1, $params12);
        executeQuery($conn, $sql2, $params12);
        executeQuery($conn, $sql3, $params3);
        executeQuery($conn, $sql4, $params12);
        executeQuery($conn, $sql5, $params12);
        executeQuery($conn, $sql6, $params12);
    }

    function import_phone(int $phone_id, int $import_count, int $import_price) {
        /**
         * Tăng số lượng trong bảng dienthoai
         * Thêm thông tin vào bảng nhap_dienthoai
         */
        global $conn;
        $current_date = date("Y-m-d");
        $current_count = executeQuery($conn, "SELECT ton_kho FROM dienthoai WHERE ma_dienthoai = ?", [$phone_id])[0]['ton_kho'];
        $new_count = $current_count + $import_count;
        executeQuery($conn, "UPDATE dienthoai SET ton_kho = ? WHERE ma_dienthoai = ?", [$new_count, $phone_id]);
        executeQuery(
            $conn, 
            "INSERT INTO nhap_dienthoai (ma_dienthoai, ngay_nhap, gia_nhap, so_luong_nhap) VALUE (?, ?, ?, ?)", 
            [$phone_id, $current_date, $import_price, $import_count]
        );
    }
?>