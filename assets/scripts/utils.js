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