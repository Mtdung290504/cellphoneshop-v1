<?php
    function build_list_phone_html($list_phone_display) {
        $html = "";
        foreach ($list_phone_display as $phone) {
            $html .= '<div class="product-item">';
            if($phone->discount > 0) {
                $html .= '<div class="discount-label">- '.$phone->discount.'%</div>';
            }
            $html .= '<a href="' . getRootUrl() . 'product?product_id=' . $phone->id . '">
                <div class="product-image">
                    <img src="' . getUrlProductImage($phone->thumbnail_image) . '" alt="' . filterImageName($phone->thumbnail_image) . '">
                </div>
                <div class="product-status ' . ($phone->status ? '' : 'no') . '">' . $phone->status . '</div>
                <div class="product-name">' . $phone->name . '</div>
                <div class="product-price">
                    <span class="main-price">' . number_format(getDiscountedPrice($phone->price, $phone->discount), 0, ',', '.') . 'đ</span>
                    <span class="price">' . ($phone->discount > 0 && $phone->price != getDiscountedPrice($phone->price, $phone->discount) ? number_format($phone->price, 0, ',', '.') . 'đ' : '') . '</span>
                </div>
                <div class="product-rating">';
            
            if ($phone->stars != 0) {
                $html .= '<span class="star-wrapper">' . renderStars($phone->stars) . '</span>
                    <span class="rating">' . $phone->stars . '/5</span>';
            } else {
                $html .= '<span class="none-star">Chưa có lượt đánh giá</span>';
            }
            
            $html .= '</div>
            </a></div>';
        }
        return $html;
    }
?>
