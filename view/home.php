<?php require_once __DIR__."/../view/top_nav.php"?>

<div class="swiper-container">
    <div class="swiper-wrapper">
        <?php foreach ($list_slide_image as $value) { ?>
            <div class="swiper-slide">
                <img src="<?php echo getRootUrl().'assets/images/slide-images/'.$value['link_anh']?>" alt="<?php echo $value['link_anh']?>">
            </div>
        <?php } ?>
    </div>
    <div class="swiper-pagination"></div>
</div>

<h3 style="display: block; text-align: center; font-size: 27px; width: 100%; margin: 40px 0 60px 0;">
    <?php echo $firm_name ? "Điện thoại $firm_name" : "Danh mục sản phẩm"?>
</h3>

<div class="choose-box">
    <p>Sắp xếp theo</p>
    <select onchange="window.location.href = this.value" value="">
        <option style="display:none"></option>
        <option value="<?php echo add_query_to_current_url(array('sort'=>'newest'))?>">Mới nhất</option>
        <option value="<?php echo add_query_to_current_url(array('sort'=>'top_selling'))?>">Bán chạy nhất</option>
        <option value="<?php echo add_query_to_current_url(array('sort'=>'price_asc'))?>">Giá tăng dần</option>
        <option value="<?php echo add_query_to_current_url(array('sort'=>'price_desc'))?>">Giá giảm dần</option>
        <option value="<?php echo add_query_to_current_url(array('sort'=>'discount'))?>">Ưu đãi nhất</option>
        <option value="<?php echo add_query_to_current_url(array('sort'=>'most_viewed'))?>">Xem nhiều nhất</option>
        <!-- <option value=""></option>
        <option value=""></option>
        <option value=""></option> -->
    </select>
    <script>
        var currentSortValue = "<?php echo $sort_request ?>";
        document.addEventListener("DOMContentLoaded", function() {
        var selectElement = document.querySelector("select");
        var options = selectElement.options;
        for (var i = 0; i < options.length; i++) {
            if (options[i].value.indexOf(currentSortValue) != -1) {
                options[i].selected = true;
                break;
            }
        }
        });
    </script>
</div>

<div class="product-grid">
    <?php echo build_list_phone_html($list_phone_display)?>
</div>
<div id="endlist"></div>

<script src="<?php echo getRootUrl().'assets/scripts2/swiper-bundle.min.js'?>"></script>
<script>
    var swiper = new Swiper('.swiper-container', {
    // Cấu hình tùy chọn của Swiper.js
    slidesPerView: 2,
    spaceBetween: 10,
    loop: true,
    pagination: {
        el: '.swiper-pagination',
        clickable: true,
    },
    autoplay: {
        delay: 2000, // Khoảng thời gian chờ giữa các slide (đơn vị: miligiây)
    },
    });
</script>