<?php
    if(!isAdmin()) 
        header("Location: ".getRootUrl());
?>
<h3 class="title">Quản lý sản phẩm</h3>
<div class="search-bar">
    <label for="search-input">Tìm kiếm:</label>
    <input type="text" id="search-input">
</div>
<a href="?action=them_sanpham" class="add-product-btn"><i class="fas fa-plus"></i> Thêm sản phẩm</a>
<table class="phone-table">
    <thead>
        <tr>
            <th>ID</th>
            <th>Ảnh</th>
            <th>Tên điện thoại</th>
            <th>Tồn kho</th>
            <th>Nhập hàng</th>
            <th>Chỉnh sửa</th>
            <th>Xóa</th>
        </tr>
    </thead>
    <tbody>
        
        <?php foreach ($list_phone_data as $phone_data) {
            $thumbnail_image = executeQuery($conn, "SELECT link_anh FROM anh_dienthoai WHERE ma_dienthoai = ? LIMIT 1", [$phone_data['ma_dienthoai']])[0]['link_anh'];
        ?>
            <tr id=<?php echo $phone_data['ma_dienthoai']?>>
                <td><?php echo $phone_data['ma_dienthoai']?></td>
                <td class="actions"><img src="<?php echo getRootUrl().'/assets/images/product-images/'.filterImageName($thumbnail_image)?>" alt="<?php echo filterImageName($thumbnail_image)?>"></td>
                <td class="phone-name"><?php echo $phone_data['ten_dienthoai']?></td>
                <td class="<?php echo $phone_data['ton_kho']==0 ? 'alert' : ''?>"><?php echo $phone_data['ton_kho']?></td>
                <td class="actions"><a href="?action=nhap_hang&product_id=<?php echo $phone_data['ma_dienthoai']?>"><i class="fas fa-plus"></i></a></td>
                <td class="actions"><a href="?action=sua_sanpham&product_id=<?php echo $phone_data['ma_dienthoai']?>"><i class="fas fa-pencil-alt"></i></a></td>
                <td class="actions"><a class="delete-phone" data-product_id=<?php echo $phone_data['ma_dienthoai']?> href="?action=xoa_sanpham&product_id=<?php echo $phone_data['ma_dienthoai']?>"><i class="fas fa-trash"></i></a></td>                
            </tr>
        <?php }?>
    </tbody>
</table>
<script>
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

    let delete_buttons = document.querySelectorAll('a.delete-phone');
    delete_buttons.forEach(link => {
        link.addEventListener('click', function(event) {
            event.preventDefault();
            if(confirm(`Xác nhận xóa sản phẩm có ID là ${this.dataset.product_id}?`)) {
                window.location.href = this.href;
            }
        })
    });
</script>