<?php
$var = $_POST['alo'];
print_r(preg_split("/\r\n|\n|\r/", $var)) ;
echo $var;
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