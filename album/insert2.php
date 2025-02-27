<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>electronic</title>
</head>

<body>

<h1>ฟอร์มรับข้อมูลสินค้า</h1>

<form method="post" action="" enctype="multipart/form-data">
    ชื่อสินค้า: <input type="text" name="pname" required autofocus><br>
    รายละเอียดสินค้า: <textarea name="pdetail" required></textarea><br>
    ราคา: <input type="text" name="pprice" required><br>
    รูปภาพสินค้า: <input type="file" name="pimage" accept="image/*" required><br>
    <button type="submit">บันทึก</button>
</form>

<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    include_once("../connectdb.php");
    
    $pname = $_POST['pname'];
    $pdetail = $_POST['pdetail'];
    $pprice = $_POST['pprice'];
    
    // ตรวจสอบและอัปโหลดไฟล์
    if (isset($_FILES['pimage']) && $_FILES['pimage']['error'] == 0) {
        $uploadDir = "../img/";
        
        // เพิ่มข้อมูลสินค้าไปยังฐานข้อมูล
        $sql = "INSERT INTO products (p_name, p_detail, p_price) VALUES('$pname', '$pdetail', '$pprice')";
        if (mysqli_query($conn, $sql)) {
            $last_id = mysqli_insert_id($conn); // รับค่า ID ล่าสุดที่เพิ่ม
            
            $fileExt = pathinfo($_FILES['pimage']['name'], PATHINFO_EXTENSION);
            $newFileName = $last_id . '.' . $fileExt;
            $uploadPath = $uploadDir . $newFileName;
            
            if (move_uploaded_file($_FILES['pimage']['tmp_name'], $uploadPath)) {
                // อัปเดตรูปภาพในฐานข้อมูล
                $updateSql = "UPDATE products SET p_ext='$fileExt' WHERE p_id='$last_id'";
                mysqli_query($conn, $updateSql);
                
                echo "<script>alert('เพิ่มข้อมูลสำเร็จ');</script>";
            } else {
                echo "<script>alert('อัปโหลดรูปภาพล้มเหลว');</script>";
            }
        } else {
            echo "<script>alert('เกิดข้อผิดพลาดในการเพิ่มข้อมูลสินค้า');</script>";
        }
    } else {
        echo "<script>alert('กรุณาอัปโหลดรูปภาพสินค้า');</script>";
    }
}
?>

</body>
</html>
