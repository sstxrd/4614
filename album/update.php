<?php
include_once("../connectdb.php");
$sql = "SELECT * FROM `products` WHERE `p_id` = '{$_GET['id']}' ";
$rs = mysqli_query($conn, $sql);
$data = mysqli_fetch_array($rs);
?>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>electronic</title>
</head>

<body>

<h1>แก้ไขข้อมูลสินค้า</h1>

<form method="post" action="" enctype="multipart/form-data">
    ชื่อสินค้า: <input type="text" name="pname" value="<?php echo $data['p_name'];?>" required autofocus><br>
    รายละเอียดสินค้า: <textarea name="pdetail" required></textarea><br>
    ราคา: <input type="text" name="pprice" value="<?php echo $data['p_price'];?>" required><br>
    รูปภาพสินค้า: <input type="file" name="pimage" accept="image/*" required><br>
    <button type="submit">บันทึก</button>
</form>

<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
	$pname = $_POST['pname'];
	$pprice = $_POST['pprice'];
	
	$sql = "UPDATE products SET p_name='{$pname}' , SET p_price='{$pprice}'
	WHERE p_id='{$_GET['id']}' ";
	mysqli_query($conn, $sql) or die ('update error');
	
	echo "<script>";
	echo "alert('แก้ไขสำเร็จ!'); window.location='update.php?id={$_GET['id']}';";
	echo "</script>";
	
	
}
?>

</body>
</html>