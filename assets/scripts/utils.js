function formatMoney(amount) {
    // Chuyển số tiền thành chuỗi
    let amountStr = amount.toString();

    // Đảo ngược chuỗi
    let reversedStr = amountStr.split("").reverse().join("");

    // Chia chuỗi thành các nhóm có 3 ký tự
    let groups = reversedStr.match(/.{1,3}/g);

    // Nối các nhóm lại với dấu chấm
    let formattedStr = groups.join(".");

    // Đảo ngược chuỗi lại
    let finalStr = formattedStr.split("").reverse().join("");

    return finalStr;
}

function renderStars(starCount) {
    let result = '';
    let id_star = 1;
  
    const fullStars = Math.floor(starCount);
    for (let i = 0; i < fullStars; i++) {
      result += `<i class="fas fa-star" data-value="${id_star}"></i>`;
      id_star++;
    }
  
    const decimal = starCount - fullStars;
    if (decimal >= 0.5) {
      result += `<i class="fas fa-star-half-alt" data-value="${id_star}"></i>`;
      id_star++;
    } else if (decimal > 0 && decimal < 0.5) {
      result += `<i class="far fa-star" data-value="${id_star}"></i>`;
      id_star++;
    }
  
    const emptyStars = 5 - Math.ceil(starCount);
    for (let i = 0; i < emptyStars; i++) {
      result += `<i class="far fa-star" data-value="${id_star}"></i>`;
      id_star++;
    }
  
    return result;
}

function addUrlGet(key, value) {
  let currentUrl = window.location.href;
  if(currentUrl.indexOf('?') != -1) {
    currentUrl += `?${key}=${value}`;
  } else {
    currentUrl += `&${key}=${value}`;
  }
  return currentUrl;
}