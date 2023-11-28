<?php
    function delete_from_cookie_cart(int $phone_id) {
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

    function update_cookie_cart(int $phone_id, int $phone_count) {
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
        global $conn;
        $query = "SELECT*FROM giohang WHERE ma_nguoidung = ? AND ma_dienthoai = ?";
        if(executeQuery($conn, $query, [$user_id, $phone_id])!=null) {
            executeQuery($conn, "UPDATE giohang SET so_luong = ? WHERE ma_nguoidung = ? AND ma_dienthoai = ?", [$phone_count, $user_id, $phone_id]);
        } else {
            executeQuery($conn, "INSERT INTO giohang (ma_nguoidung, ma_dienthoai, so_luong) VALUE (?, ?, ?)", [$user_id, $phone_id, $phone_count]);
        }
    }
?>