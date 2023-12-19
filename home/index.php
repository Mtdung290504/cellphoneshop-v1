<?php
    require_once __DIR__."/../model/build_view_functions.php";

    /**
     * nếu không có hãng, load danh sách bình thường
     * nếu không có sort, select theo mã điện thoại giảm dần
     */
    $firm = getRequest('g', 'firm');
    $firm_name = '';
    $firm_request = [];
    if($firm) {
        $firm_name = executeQuery($conn, "SELECT ten_hang FROM hang_dienthoai WHERE ma_hang = ?", [$firm]);
        if($firm_name) {
            $firm_name = $firm_name[0]['ten_hang'];
            $firm_request[] = $firm;
        }
    }
    $sort = "ma_dienthoai DESC";
    $limit = "";
    $label = "";
    $sort_request = getRequest("g", "sort");
    if($sort_request) {
        switch ($sort_request) {
            case 'top_selling':
                $sort = "da_ban DESC, ten_dienthoai";
                break;
            case 'price_asc':
                $sort = "(gia_ban_dienthoai - gia_ban_dienthoai*giam_gia_dienthoai/100) ASC, da_ban DESC, ten_dienthoai";
                break;
            case 'price_desc':
                $sort = "(gia_ban_dienthoai - gia_ban_dienthoai*giam_gia_dienthoai/100) DESC, da_ban DESC, ten_dienthoai";
                break;  
            case 'discount':
                $sort = "giam_gia_dienthoai DESC, da_ban DESC, ten_dienthoai";
                break;   
            case 'most_viewed':
                $sort = "luot_xem DESC, da_ban DESC, ten_dienthoai";
                break;
            default:
                $sort = "ma_dienthoai DESC";
                break;
        }
    }
    if($firm) {
        $sql = "SELECT * FROM dienthoai WHERE ma_hang = ? AND da_xoa IS NULL ORDER BY $sort $limit";
        $list_phone_data = executeQuery($conn, $sql, $firm_request);
    } else {
        $sql = "SELECT * FROM dienthoai WHERE da_xoa IS NULL ORDER BY $sort $limit";
        $list_phone_data = executeQuery($conn, $sql);        
    }

    $list_phone_display = [];

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

    //Lấy ds slide
    $list_slide_image = executeQuery($conn, "SELECT * FROM slide");

    require_once(__DIR__.'/../view/home.php');
?>

