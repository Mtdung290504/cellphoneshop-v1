<?php
    if(!isAdmin()) 
        header("Location: ".getRootUrl());
        $thumbnail_image = executeQuery($conn, "SELECT link_anh FROM anh_dienthoai WHERE ma_dienthoai = ? LIMIT 1", [$phone_data['ma_dienthoai']])[0]['link_anh'];
?>
<h3 class="title">Nhập hàng</h3>
<h3>Thông tin sản phẩm</h3><br>
<table class="phone-table">
    <thead>
        <tr>
            <th>ID</th>
            <th>Ảnh</th>
            <th>Tên điện thoại</th>
            <th>Tồn kho</th>
            <th>Giá bán hiện tại</th>
        </tr>
    </thead>
    <tbody>
        <tr id=<?php echo $phone_data['ma_dienthoai']?>>
            <td><?php echo $phone_data['ma_dienthoai']?></td>
            <td class="actions"><img src="<?php echo getRootUrl().'/assets/images/product-images/'.filterImageName($thumbnail_image)?>" alt="<?php echo filterImageName($thumbnail_image)?>"></td>
            <td class="phone-name"><?php echo $phone_data['ten_dienthoai']?></td>
            <td class="<?php echo $phone_data['ton_kho']==0 ? 'alert' : ''?>"><?php echo $phone_data['ton_kho']?></td>   
            <td><?php echo number_format($phone_data['gia_ban_dienthoai'], 0, ',', '.')?>đ</td>           
        </tr>
    </tbody>
</table>
<form id="form_nhap_hang" action="" method="post">
    <div class="search-bar">
        <label class="info">Giá nhập mỗi sản phẩm:</label>
        <input style="width: 200px !important;" type="number" name="phone_price" min="1000000" step="100000" value="1000000"><span style="font-size: 18px; margin-left: 10px">đ</span>
    </div>
    <div class="search-bar">
        <label class="info">Số lượng sản phẩm:</label>
        <input style="width: 200px !important;" type="number" name="phone_count" value="1" min="1"><span style="font-size: 18px; margin-left: 10px">Cái</span>
    </div>
    <a href="javascript:void(0);" class="add-product-btn"><i class="fas fa-plus"></i> Nhập hàng</a>
</form>
<script>
    let form = document.querySelector('#form_nhap_hang');
    document.querySelector('#form_nhap_hang a.add-product-btn').addEventListener('click', function() {
        let price = document.querySelector('input[name="phone_price"]').value;
        let count = document.querySelector('input[name="phone_count"]').value;
        let confirmStr = `Xác nhận nhập ${count} điện thoại này với giá ${formatMoney(price)}đ mỗi cái\nTổng giá là: ${formatMoney(price*count)}đ`;
        if(confirm(confirmStr)) {
            form.submit();
        }
    });
</script>