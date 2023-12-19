<?php
    $list_firm_data = executeQuery($conn, "SELECT * FROM hang_dienthoai");

    //Đếm loại đt có trong giỏ
    $cart_count = 0;
    if(isLoggedIn()) {
        $rs = executeQuery($conn, "SELECT SUM(so_luong) AS tong_so_luong FROM giohang WHERE ma_nguoidung = ?", [getRequest('s', 'user_id')]);
        $cart_count = ($rs==null) ? 0 : $rs[0]['tong_so_luong'];
    } else {
        $cart_cookie = json_decode(getRequest('c', 'cart'), true);
        if($cart_cookie) {
            foreach ($cart_cookie as $value) {
                $cart_count += $value[1];
            }
        }
    }
?>

<nav class="menu">
    <ul class="menu-list">
        <li class="menu-item">
            <a>Hãng điện thoại</a>
            <ul class="submenu">
                <?php foreach ($list_firm_data as $value) {?>
                    <li><a href="<?php echo getRootUrl().'?firm='.$value['ma_hang']?>"><?php echo $value['ten_hang']?></a></li>
                <?php }?>
            </ul>
        </li>

        <li class="menu-item cart-icon">
            <a href="<?php echo getRootUrl().'/cart'?>">
                <i class="fa fa-shopping-cart"></i>
                <p>Giỏ hàng</p>
            </a>
            <div class="cart-count" style="display: <?php echo ($cart_count && $cart_count != 0) ? 'flex' : 'none' ?>"><?php echo "<p>$cart_count</p>"?></div>
        </li>
    </ul>
</nav>