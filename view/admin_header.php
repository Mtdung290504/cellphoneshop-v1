<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cellphone Shop - Quản Trị</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css">
    <?php require_once(__DIR__.'/../view/embed-styles-and-scripts.php')?>
</head>

<body>
  <dashboard>
    <div class="sidebar">
      <div class="links">
        <h3 class="title">Cellphones Shop - Dashboard</h3>
        <h3>Xin chào, Admin</h3>
        <ul>
          <li><span style="color: rgb(0, 100, 230);">►</span> <a href="<?php echo getRootUrl()?>logout">Đăng xuất</a></li>
          <li><span style="color: rgb(0, 100, 230);">►</span> <a href="<?php echo getRootUrl()?>">Về trang chủ</a></li>
          <li><span style="color: rgb(0, 100, 230);">►</span> <a href="<?php echo getRootUrl()?>manage">Quản lý sản phẩm</a></li>
          <li><span style="color: rgb(0, 100, 230);">►</span> <a href="<?php echo getRootUrl()?>manage?action=xem_donhang">Xem đơn hàng</a></li>
          <li><span style="color: rgb(0, 100, 230);">►</span> <a href="<?php echo getRootUrl()?>manage?action=tk_doanhthu">Thống kê doanh thu</a></li>
          <li><span style="color: rgb(0, 100, 230);">►</span> <a href="<?php echo getRootUrl()?>manage?action=tk_tuongtac">Thống kê tương tác</a></li>
        </ul>
      </div>
    </div>
    <content>