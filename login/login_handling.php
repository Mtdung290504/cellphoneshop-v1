<?php
    $error_login_password 
    = $error_login_name 
    = $login_name 
    = $login_password
    = '';
    
    if(getRequest('p', 'signup')) {
        header("Location: ".getRootUrl()."/signup");                                                                                                                                                                                                                                                                                               
    } else if(getRequest('p', 'login')) {
        $login_name = getRequest('p', 'login_name');
        $login_password = getRequest('p', 'login_password');
        
        $stmt = $conn->prepare('SELECT * FROM nguoidung WHERE ten_dang_nhap = ?');
        $stmt->bind_param("s", $login_name);
        $stmt->execute();
        $rs = $stmt->get_result();

        if($rs->num_rows == 1) {
            $row = $rs->fetch_assoc();
            $is_admin = $row['quyen_admin'];
            $user_database_password = $row['mat_khau'];
            if(password_verify($login_password, $user_database_password)) {
                $_SESSION['user_login_name'] = $row['ten_dang_nhap'];
                $_SESSION['user_login_password'] = $row['mat_khau'];
                $_SESSION['user_name'] = $row['ho_ten'];
                $_SESSION['is_admin'] = $row['quyen_admin'];
                header('Location: '.getRootUrl());
            } else {
                $error_login_password = "*Sai mật khẩu";
                $login_password = '';
            }       
        } else if($rs->num_rows == 0) {
            $error_login_name = "*Tên đăng nhập không tồn tại";
            $login_name = '';
            $login_password = '';
        }
    } else {
        if(!isset($have_access)) {
            header('Location: '.getRootUrl());
        }
    }
?>