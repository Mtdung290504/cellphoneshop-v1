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

    }

    function delete_phone(int $phone_id) {
        /**
         * Thực hiện xoá ở 3 bảng:
         * 
         */
    }
?>