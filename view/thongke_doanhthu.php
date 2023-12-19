<?php
    if(!isAdmin()) 
        header("Location: ".getRootUrl());
?>
<h3 class="title">Thống kê doanh thu</h3>
<div class="search-bar">
    <label for="search-input">Tìm kiếm:</label>
    <input type="text" id="search-input">
</div>
<h3 style="margin-bottom: 30px;">Tổng danh thu từ trước đến nay: <span id="total"></span></h3>
<table class="phone-table">
    <thead>
        <tr>
            <th>ID</th>
            <th>Ảnh</th>
            <th>Tên điện thoại</th>
            <th>SL đã nhập</th>
            <th>SL đã bán</th>
            <th>SL tồn kho</th>
            <th>Tổng doanh thu</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($list_phone_data as $phone_data) {
            $thumbnail_image = executeQuery($conn, "SELECT link_anh FROM anh_dienthoai WHERE ma_dienthoai = ? LIMIT 1", [$phone_data['ma_dienthoai']])[0]['link_anh'];
            $nhap_hang_data = executeQuery($conn, "SELECT SUM(so_luong_nhap) AS so_luong_nhap, SUM(so_luong_nhap*gia_nhap) AS tong_gia_nhap FROM nhap_dienthoai WHERE ma_dienthoai = ?", [$phone_data['ma_dienthoai']])[0];
            $gia_nhap = $nhap_hang_data['tong_gia_nhap'];
            $gia_ban = executeQuery($conn, "SELECT SUM(so_luong_ban*gia_ban) AS tong_gia_ban FROM `ban_dienthoai` WHERE ma_dienthoai = ?", [$phone_data['ma_dienthoai']])[0]['tong_gia_ban'];
            $doanh_thu = $gia_ban - $gia_nhap;
            $tong_doanh_thu += $doanh_thu;
        ?>
            <tr id=<?php echo $phone_data['ma_dienthoai']?>>
                <td><?php echo $phone_data['ma_dienthoai']?></td>
                <td class=""><img src="<?php echo getUrlProductImage($thumbnail_image)?>" alt="<?php echo filterImageName($thumbnail_image)?>"></td>
                <td class="phone-name"><?php echo $phone_data['ten_dienthoai']?></td>
                <td class=""><?php echo $nhap_hang_data['so_luong_nhap'] ?? 0 ?></td>
                <td class=""><?php echo $phone_data['da_ban']?></td>
                <td class="<?php echo $phone_data['ton_kho']==0 ? 'alert' : ''?>"><?php echo $phone_data['ton_kho']?></td>
                <td class=""><?php echo number_format($doanh_thu, 0, ',', '.')?>đ</td>                
            </tr>
        <?php }?>
    </tbody>
</table>

<script>
    let doanhThu = '<?php echo number_format($tong_doanh_thu, 0, ',', '.')?>đ';
    document.querySelector("#total").textContent = doanhThu;

    let phoneList = document.querySelectorAll('.phone-table tbody tr');
    let searchInput = document.getElementById('search-input');
    searchInput.addEventListener('input', function() {
        let searchValue = this.value.trim().toLowerCase();
        if (!searchValue) {
            //Nếu input rỗng thì hiện lại hết
            phoneList.forEach(function(phone) {
                phone.style.display = 'table-row';
            });
            return;
        }
        // Lặp qua từng hàng điện thoại trong danh sách
        phoneList.forEach(function(phone) {
            let id = phone.querySelector('td:first-child').textContent.toLowerCase();
            let name = phone.querySelector('td:nth-child(3)').textContent.toLowerCase();
            if (!isNaN(searchValue)) {
                //Nếu giá trị tìm kiếm là số -> tìm theo id
                phone.style.display = id.includes(searchValue) ? 'table-row' : 'none';
            } else {
                //Nếu giá trị tìm kiếm là chữ -> tìm theo tên
                phone.style.display = name.includes(searchValue) ? 'table-row' : 'none';
            }
        });
    });
</script>