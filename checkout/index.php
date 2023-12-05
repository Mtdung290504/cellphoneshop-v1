<?php
    session_start();
    require_once(__DIR__.'/../utils/util.php');
    if(!getRequest('p', 'id_product') && !getRequest('p', 'list_phone_type')) {
        echo "<script>window.location='".getRootUrl()."'</script>";
        exit();
    }
    if(isLoggedIn()) { 
        require_once(__DIR__.'/../model/database.php');
        require_once(__DIR__.'/../model/user_functions.php');

        //Xử lý khi người dùng gửi form
        $list_phone_type = getRequest('p', 'list_phone_type');
        $list_phone_checkout = [];
        if($list_phone_type) {
            $user_id = getRequest('s', 'user_id');
            if($list_phone_type == "single") {
                $request_url = getRequest('p', 'request_url');
                $ho_ten = getRequest('p', 'ho_ten');
                $sdt = getRequest('p', 'dien_thoai');
                $diachi = getRequest('p', 'dia_chi');
                $phone_id = getRequest('p', 'phone_id');
                $phone_count = getRequest('p', 'so_luong_dienthoai');
                $list_phone_checkout[$phone_id] = $phone_count;
                user_do_checkout($user_id, $list_phone_checkout, $ho_ten, $sdt, $diachi);
                echo '<script>
                    alert("Mua sản phẩm thành công!")
                    window.location = "'.$request_url.'"
                </script>';
            } else if($list_phone_type == "multiple") {
                $request_url = getRequest('p', 'request_url');
                $ho_ten = getRequest('p', 'ho_ten');
                $sdt = getRequest('p', 'dien_thoai');
                $diachi = getRequest('p', 'dia_chi');
                $phone_id = json_decode(getRequest('p', 'phone_id'));
                $phone_count = json_decode(getRequest('p', 'so_luong_dienthoai'));
                $list_phone_checkout = [];
                foreach ($phone_id as $key => $id) {
                    $list_phone_checkout[$id] = $phone_count[$key];
                }
                user_do_checkout($user_id, $list_phone_checkout, $ho_ten, $sdt, $diachi);
                echo '<script>
                    alert("Mua sản phẩm thành công!")
                    window.location = "'.$request_url.'"
                </script>';
            }
            exit();
        }

        $user_id = getRequest('s', 'user_id');
        $request_url = getRequest('p', 'request_url');
        $request_page = getRequest('p', 'request_page');
        $id_product = getRequest('p', 'id_product');
        if($request_url && $request_page && $id_product) {
            $request_user = executeQuery($conn, "SELECT * FROM nguoidung WHERE ma_nguoidung = ?", [$user_id])[0];
            $user_name = $request_user['ho_ten'];
            $user_tel = $request_user['dien_thoai'];
            $user_address = $request_user['dia_chi'];

            if($request_page == "product_page") {
                $request_phone = executeQuery($conn, "SELECT*FROM dienthoai WHERE ma_dienthoai = ?", [$id_product])[0];
                $ton_kho = $request_phone['ton_kho'];
                $thumbnail_image = executeQuery($conn, "SELECT link_anh FROM anh_dienthoai WHERE ma_dienthoai = ? LIMIT 1", [$id_product])[0]["link_anh"];
                $ten_dienthoai = $request_phone['ten_dienthoai'];
                $gia_dienthoai = getDiscountedPrice($request_phone['gia_ban_dienthoai'], $request_phone['giam_gia_dienthoai']);
            } 
            
            else if($request_page == "cart_page") {
                $list_id = json_decode($id_product);
                // $list_id = ["1", "7", "3"];
                if(count($list_id) == 1){
                    $list_id_str = $list_id[0];
                    $sql = "SELECT * FROM dienthoai WHERE ma_dienthoai = ?";
                    $sql2 = "SELECT so_luong FROM giohang WHERE ma_dienthoai = ? AND ma_nguoidung = ?";
                    $request_phones = executeQuery($conn, $sql, [$list_id_str]);
                    $so_luong = executeQuery($conn, $sql2, [$list_id_str, $user_id]);
                    $gia_dienthoai = getDiscountedPrice($request_phones[0]['gia_ban_dienthoai'], $request_phones[0]['giam_gia_dienthoai'])*$so_luong[0]['so_luong'];
                } else {
                    $placeholders = implode(', ', array_fill(0, count($list_id), '?'));
                    $sql = "SELECT * FROM dienthoai WHERE ma_dienthoai IN ($placeholders) ORDER BY ma_dienthoai";
                    $request_phones = executeQuery($conn, $sql, $list_id);
                    
                    $list_id[] = $user_id;
                    $sql2 = "SELECT so_luong FROM giohang WHERE ma_dienthoai IN ($placeholders) AND ma_nguoidung = ? ORDER BY ma_dienthoai";
                    $so_luong = executeQuery($conn, $sql2, $list_id);
                    $gia_dienthoai = 0;
                    foreach ($request_phones as $key => $phone_data) {
                        $sl = $so_luong[$key]['so_luong'];
                        $gia_dienthoai += getDiscountedPrice($phone_data['gia_ban_dienthoai'], $phone_data['giam_gia_dienthoai'])*$sl;
                    }  
                }
                // foreach ($request_phones as $key => $value) {
                //     var_dump($value); echo "<br>";
                // }
                // exit();
            }
        } else {
            echo "<script>
                alert('Lỗi thông số!');
                window.location = '$request_url';
            </script>";
            exit();
        }
        require_once(__DIR__.'/../view/header.php');
        require_once(__DIR__.'/../view/check_out_form.php');
        require_once(__DIR__.'/../view/footer.php');
    } else {
        echo "<script>
            alert('Bạn cần đăng nhập để tiếp tục');
            window.location = '".getRootUrl()."login';
        </script>";
        exit();
    }
?>