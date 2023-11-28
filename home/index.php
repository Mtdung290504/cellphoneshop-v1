<?php
    if(getRequest('g', 'firm')) {
    }
    if(getRequest('g', 'page')) {
    }
    $list_phone_data = executeQuery($conn, "SELECT * FROM dienthoai");
    $list_phone_display = [];
    foreach ($list_phone_data as $value) {
        $new_phone = new Phone_preview(
            $value['ma_dienthoai'],
            executeQuery($conn, "SELECT link_anh FROM anh_dienthoai WHERE ma_dienthoai = ? LIMIT 1", [$value['ma_dienthoai']])[0]['link_anh'],
            $value['ten_dienthoai'],
            $value['gia_ban_dienthoai'],
            $value['giam_gia_dienthoai'],
            0//số sao, tính sau
        );
        $list_phone_display[] = $new_phone;
    }
    $list_slide_image = executeQuery($conn, "SELECT * FROM slide");
    $cart_count = 0;
    if(isLoggedIn()) {
        $rs = executeQuery($conn, "SELECT * FROM giohang WHERE ma_nguoidung = ?", [getRequest('s', 'user_id')]);
        $cart_count = ($rs==null) ? 0 : count($rs);
    } else {
        $cart_cookie = json_decode(getRequest('c', 'cart'));
        if($cart_cookie) {
            $cart_count = count($cart_cookie);
        }
    }
    $product_status = '';//Tình trạng hàng, tính sau
    require_once(__DIR__.'/../view/home.php');
?>

