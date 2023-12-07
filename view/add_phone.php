<div class="form-upload">
    <form id="add-phone-form" action="" method="post" enctype="multipart/form-data">
    <flex-container>
        <table-container>
            <table>
                <tr class="title">
                    <td colspan="2"><h3>Thông tin điện thoại</h3></td>
                </tr>
                <tr>
                    <td><label for="name">Tên điện thoại:</label></td>
                    <td><input required type="text" id="name" name="name"></td>
                </tr>
                <tr>
                    <td><label for="images">Hình ảnh điện thoại:</label></td>
                    <td><input required type="file" id="images" name="images[]" multiple accept="image/*"></td>
                </tr>
                <tr>
                    <td><label for="price">Giá bán (đ):</label></td>
                    <td><input required type="number" id="price" name="price" min="1000000" value="1000000" step="100000"></td>
                </tr>
                <tr>
                    <td><label for="discount">Giảm giá (%):</label></td>
                    <td><input required type="number" id="discount" name="discount" min="0" max="80" value="0"></td>
                </tr>
                <tr>
                    <td><label for="price_after_discount">Giá sau giảm giá:</label></td>
                    <td><input required type="text" id="price_after_discount" disabled></td>
                </tr>
                <tr>
                    <td><label for="description">Mô tả:</label></td>
                    <td><textarea required id="description" name="description"></textarea></td>
                </tr>
                <tr>
                    <td><label for="firm">Hãng:</label></td>
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
                    <td><textarea required name="screen_size"></textarea></td>
                </tr>
                <tr>
                    <td><label>Công nghệ màn hình</label></td>
                    <td><textarea required name="screen_technology"></textarea></td>
                </tr>
                <tr>
                    <td><label>Camera sau</label></td>
                    <td><textarea required name="behind_cam"></textarea></td>
                </tr>
                <tr>
                    <td><label>Camera trước</label></td>
                    <td><textarea required name="front_cam"></textarea></td>
                </tr>
                <tr>
                    <td><label>Chipset</label></td>
                    <td><textarea required name="chipset"></textarea></td>
                </tr>
                <tr>
                    <td><label>Dung lượng RAM</label></td>
                    <td><textarea required name="ram"></textarea></td>
                </tr>
                <tr>
                    <td><label>Bộ nhớ trong</label></td>
                    <td><textarea required name="internal_memory"></textarea></td>
                </tr>
                <tr>
                    <td><label>Pin</label></td>
                    <td><textarea required name="pin"></textarea></td>
                </tr>
                <tr>
                    <td><label>Thẻ SIM</label></td>
                    <td><textarea required name="sim"></textarea></td>
                </tr>
                <tr>
                    <td><label>Hệ điều hành</label></td>
                    <td><textarea required name="os"></textarea></td>
                </tr>
                <tr>
                    <td><label>Độ phân giải màn hình</label></td>
                    <td><textarea required name="screen_resolution"></textarea></td>
                </tr>
                <tr>
                    <td><label>Tính năng màn hình</label></td>
                    <td><textarea required name="screen_feature"></textarea></td>
                </tr>
            </table>
        </table-container>
    </flex-container>
    <div class="submit-box"><input id="submit-btn" type="submit" value="Thêm sản phẩm này"></div>
    </form>  

    <script> 
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

        let inputBtn = document.getElementById('submit-btn');
        inputBtn.addEventListener('click', function(event) {
            let found = false;
            let err = '';
            event.preventDefault();
            if(document.getElementById('images').value == '') {
                err+="Bạn chưa chọn file ảnh\n";
            }
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
            document.getElementById('add-phone-form').submit();
        });
    </script>
</div> 