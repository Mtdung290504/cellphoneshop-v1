<?php
require_once(__DIR__.'/../model/database.php');
// if(isset($_POST['alo'])) {
//     $conn->query('insert into testtext(mydata) value ("'.$_POST['alo'].'")');
// }
$result = $conn->query('select * from testtext');
while($row = $result->fetch_assoc()) {
    print_r(preg_split("/\r\n|\n|\r/",$row['mydata']));
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="" method="post">
        <textarea name="alo" id="alo"></textarea>
        <input type="submit" value="Enter">
    </form>
</body>
</html>