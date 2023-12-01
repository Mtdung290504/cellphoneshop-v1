<?php
    $list_firm_data = executeQuery($conn, "SELECT * FROM hang_dienthoai");
    $list_phone_data = executeQuery($conn, "SELECT * FROM dienthoai ORDER BY ma_dienthoai DESC");
    $list_phone_display = [];

    $firm = getRequest('g', 'firm');
    if($firm) {
        $list_phone_data = executeQuery($conn, "SELECT * FROM dienthoai WHERE ma_hang = ? ORDER BY ma_dienthoai DESC", [$firm]);
        if($list_phone_data==null)
            $list_phone_data = [];
    }
    if(getRequest('g', 'page')) {

    }

    foreach ($list_phone_data as $value) {
        $phone_rate_data = executeQuery($conn, "SELECT*FROM danhgia WHERE ma_dienthoai = ?", [$value['ma_dienthoai']]);
        $phone_rate = 0;
        if($phone_rate_data!=null) {
            foreach ($phone_rate_data as $subvalue) {
                $phone_rate += $subvalue['gia_tri'];
            }
            $phone_rate /= count($phone_rate_data);
        }
        $phone_rate = round($phone_rate, 1);

        $new_phone = new Phone_preview(
            $value['ma_dienthoai'],
            executeQuery($conn, "SELECT link_anh FROM anh_dienthoai WHERE ma_dienthoai = ? LIMIT 1", [$value['ma_dienthoai']])[0]['link_anh'],
            $value['ten_dienthoai'],
            $value['gia_ban_dienthoai'],
            $value['giam_gia_dienthoai'],
            $phone_rate,
            ($value['ton_kho'] == 0) ? 'Hết hàng' : ''
        );
        $list_phone_display[] = $new_phone;
    }
    $list_slide_image = executeQuery($conn, "SELECT * FROM slide");
    $cart_count = 0;
    if(isLoggedIn()) {
        $rs = executeQuery($conn, "SELECT * FROM giohang WHERE ma_nguoidung = ?", [getRequest('s', 'user_id')]);
        $cart_count = ($rs==null) ? 0 : count($rs);
    } else {
        $cart_cookie = json_decode(getRequest('c', 'cart'), true);
        if($cart_cookie) {
            $cart_count = count($cart_cookie);
        }
    }
    $product_status = '';//Tình trạng hàng, tính sau
    require_once(__DIR__.'/../view/home.php');
?>

