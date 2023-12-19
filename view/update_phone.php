<div class="form-upload">
    <form id="update-phone-form" action="" method="post" enctype="multipart/form-data">
    <flex-container>
        <table-container>
            <table>
                <tr class="title">
                    <td colspan="2"><h3>Thông tin điện thoại</h3></td>
                </tr>
                <tr>
                    <td><label for="name">Tên điện thoại:</label></td>
                    <td><input required type="text" id="name" name="name" value="<?php echo $phone_info->name?>"></td>
                </tr>
                <tr>
                    <td><label>Hình ảnh điện thoại:</label></td>
                    <td>
                        <div style="display: inline-block; border: 1px solid lightgray; width: 360px; height: 160px; overflow: auto;">
                            <div style="width: 100%; display: flex; flex-direction: column; align-items: center;">
                                <?php foreach ($phone_images as $link_image) {
                                    echo "<img style='height:160px;' src='".getUrlProductImage($link_image)."'>";
                                }?>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td><label for="price">Giá bán (đ):</label></td>
                    <td><input required type="number" id="price" name="price" min="1000000" value="<?php echo $phone_info->price?>" step="100000"></td>
                </tr>
                <tr>
                    <td><label for="discount">Giảm giá (%):</label></td>
                    <td><input required type="number" id="discount" name="discount" min="0" max="80" value="<?php echo $phone_info->discount?>"></td>
                </tr>
                <tr>
                    <td><label for="price_after_discount">Giá sau giảm giá:</label></td>
                    <td><input required type="text" id="price_after_discount" disabled></td>
                </tr>
                <tr>
                    <td><label for="description">Mô tả:</label></td>
                    <td><textarea required id="description" name="description"><?php echo $phone_info->decription?></textarea></td>
                </tr>
                <tr>
                    <td><label for="current-firm">Hãng hiện tại:</label></td>
                    <td><input type="text" name="current-firm" id="current-firm" disabled value="<?php echo executeQuery($conn, "SELECT ten_hang FROM hang_dienthoai WHERE ma_hang = ?", [$phone_info->firm_id])[0]['ten_hang']?>"></td>                    
                </tr>
                <tr>
                    <td><label for="firm">Hãng mới (nếu cần đổi):</label></td>
                    <td>
                        <select id="firm" name="firm">
                        <?php foreach ($list_firm as $firm) {?>
                            <option value="<?php echo $firm['ma_hang']?>"><?php echo $firm['ten_hang']?></option>
                        <?php }?>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="other_firm">Hoặc thêm một hãng khác:</label></td>
                    <td><input type="text" id="other_firm" name="other_firm"></td>
                </tr>
            </table>
        </table-container>
        <table-container>
            <table>
                <tr class="title">
                    <td colspan="2"><h3>Thông số kỹ thuật</h3></td>
                </tr>
                <tr>
                    <td><label>Kích thước màn hình</label></td>
                    <td><textarea required name="screen_size"><?php echo $phone_info->specifis->screen_size?></textarea></td>
                </tr>
                <tr>
                    <td><label>Công nghệ màn hình</label></td>
                    <td><textarea required name="screen_technology"><?php echo $phone_info->specifis->screen_technology?></textarea></td>
                </tr>
                <tr>
                    <td><label>Camera sau</label></td>
                    <td><textarea required name="behind_cam"><?php echo $phone_info->specifis->behind_cam?></textarea></td>
                </tr>
                <tr>
                    <td><label>Camera trước</label></td>
                    <td><textarea required name="front_cam"><?php echo $phone_info->specifis->front_cam?></textarea></td>
                </tr>
                <tr>
                    <td><label>Chipset</label></td>
                    <td><textarea required name="chipset"><?php echo $phone_info->specifis->chipset?></textarea></td>
                </tr>
                <tr>
                    <td><label>Dung lượng RAM</label></td>
                    <td><textarea required name="ram"><?php echo $phone_info->specifis->ram?></textarea></td>
                </tr>
                <tr>
                    <td><label>Bộ nhớ trong</label></td>
                    <td><textarea required name="internal_memory"><?php echo $phone_info->specifis->internal_memory?></textarea></td>
                </tr>
                <tr>
                    <td><label>Pin</label></td>
                    <td><textarea required name="pin"><?php echo $phone_info->specifis->pin?></textarea></td>
                </tr>
                <tr>
                    <td><label>Thẻ SIM</label></td>
                    <td><textarea required name="sim"><?php echo $phone_info->specifis->sim?></textarea></td>
                </tr>
                <tr>
                    <td><label>Hệ điều hành</label></td>
                    <td><textarea required name="os"><?php echo $phone_info->specifis->os?></textarea></td>
                </tr>
                <tr>
                    <td><label>Độ phân giải màn hình</label></td>
                    <td><textarea required name="screen_resolution"><?php echo $phone_info->specifis->screen_resolution?></textarea></td>
                </tr>
                <tr>
                    <td><label>Tính năng màn hình</label></td>
                    <td><textarea required name="screen_feature"><?php echo $phone_info->specifis->screen_feature?></textarea></td>
                </tr>
            </table>
        </table-container>
    </flex-container>
    <div class="submit-box"><input id="submit-btn" type="submit" value="Cập nhật"></div>
    </form>  

    <script> 
        //Xử lý tiền
        let priceInput = document.getElementById('price'); 
        let discountInput = document.getElementById('discount'); 
        let priceAfterDiscountInput = document.getElementById('price_after_discount'); 
        function calculatePriceAfterDiscount() { 
            let price = parseFloat(priceInput.value); 
            let discount = parseFloat(discountInput.value); 
            discount = discount/100; 
            let priceAfterDiscount = price - (price * discount); 
            priceAfterDiscount -= priceAfterDiscount%10000;
            priceAfterDiscountInput.value = formatMoney(priceAfterDiscount)+"đ"; 
        } 
        priceInput.addEventListener('input', calculatePriceAfterDiscount); 
        discountInput.addEventListener('input', calculatePriceAfterDiscount);
        calculatePriceAfterDiscount();
        
        //Xử lý hãng
        let select = document.querySelector('select');
        let options = select.options;
        for (let i=0; i<options.length; i++) {
            if (options[i].innerText.toLowerCase() == document.querySelector('#current-firm').value.toLowerCase()) {
                options[i].selected = true;
                break;
            }
        }

        //Xử lý submit
        let inputBtn = document.getElementById('submit-btn');
        inputBtn.addEventListener('click', function(event) {
            let found = false;
            let err = '';
            event.preventDefault();
            let options = document.querySelectorAll('option');
            let newFirm = document.querySelector('input#other_firm').value.toLowerCase();
            options.forEach(option => {
                if(newFirm == option.innerText.toLowerCase()) {
                    err+="Hãng mới trùng với hãng đã có";
                    document.querySelector('input#other_firm').value = "";
                    found = true;
                    return;
                }
            });
            if(err) {
                alert(err);
                return;
            }
            if(confirm("Bạn có chắc chắn muốn cập nhật sản phẩm này?")) {
                document.getElementById('update-phone-form').submit();
            }
        });
    </script>
</div> 