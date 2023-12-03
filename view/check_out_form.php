<checkoutpage>
    <h3 class="title">Cellphone Shop - Thanh Toán</h3>

    <form method="post" action="">
        <div class="form-group">
            <label for="fullname">Họ tên:</label>
            <input type="text" id="fullname" required name="ho_ten" placeholder="Họ tên">
        </div>

        <div class="form-group">
            <label for="phone">Số điện thoại:</label>
            <input type="tel" id="phone" required name="dien_thoai" placeholder="Số điện thoại">
        </div>

        <div class="form-group">
            <label for="address">Địa chỉ:</label>
            <textarea id="address" rows="3" required name="dia_chi" placeholder="Địa chỉ"></textarea>
        </div>

        <h3>Danh sách điện thoại thanh toán:</h3>
        <div id="phone-list">
            <div class="phone-item">
                <img src="" alt="">
                <div class="phone-info">
                    <div class="phone-name">Tên điện thoại</div>
                    Số lượng: <input type="number" name="so_luong_dienthoai" id="so_luong_dienthoai" min="1" max="5" value="1" onkeydown="return false">
                </div>
            </div>
            <div class="phone-item">
                <img src="" alt="">
                <div class="phone-info">
                    <div class="phone-name">Tên điện thoại</div>
                    Số lượng: <input type="number" name="so_luong_dienthoai" id="so_luong_dienthoai" min="1" max="5" value="1" onkeydown="return false">
                </div>
            </div>
        </div>

        <div class="form-group">
            <label>Phương thức thanh toán:</label><br>
            <div class="payment-option">
                <input type="radio" id="cash-on-delivery" name="payment-method" value="cash-on-delivery" required>
                <label for="cash-on-delivery">Thanh toán khi nhận hàng</label>
            </div>
            <div class="payment-option">
                <input type="radio" id="online-payment" name="payment-method" value="online-payment" required>
                <label for="online-payment">Thanh toán trực tuyến</label>
            </div>
        </div>
    </form>

    <button id="checkoutBtn" class="submit-btn">Thanh toán</button>
</checkoutpage>

<script>
    // Example code to handle form submission
    document.getElementById("checkoutBtn").addEventListener("click", function(event) {
        event.preventDefault();
        // Handle form submission here
    });
</script>