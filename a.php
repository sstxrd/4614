<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>อาทิตยา แสนมีมา(เปป)</title>
</head>

<body>
<h1>ร้านขายของของน้องเปป</h1>

<?php

include_once("connectdb.php"); //เชื่อมต่อฐานข้อมูล

$sql ="SELECT * FROM `products` ORDER BY `products`.`p_id` ASC";
$rs = mysqli_query($conn,$sql);

while($data = mysqli_fetch_array($rs)){
	$img = $data['p_id'].".".$data['p_ext'];
	echo "<img src='img/{$img}' width='240'> <br>";
	echo $data[0]."<br>";
	echo "ชื่อสินค้า : ".$data['p_name']."<br>";
	echo "ราคาสินค้า : ".$data[3]."<br>";
	echo "รายละเอียดสินค้า : ".$data[2]."<hr>";
}

mysqli_close($conn);

?>













</body>
</html>
