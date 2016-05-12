<?php 
include 'connect.php';
header('Content-type:application/json');

if($_POST)
{
	$pid = $_POST['pid'];
	$firstname = $_POST['firstname'];
	$lastname = $_POST['lastname'];
	$email = $_POST['email'];
	$tel = $_POST['tel'];

	echo $pid."<br>";
	echo $firstname."<br>";
	echo $lastname."<br>";
	echo $email."<br>";
	echo $tel."<br>";

	//  เช็คว่าป้อนข้อมูลครบหรือไม่
	if(!empty($firstname) and !empty($lastname) and !empty($email) and !empty($tel))
	{
		// บันทึกข้อมูลลงตาราง
		$sql = "UPDATE personnel SET 
			firstname='$firstname',
			lastname='$lastname',
			email='$email',
			mobile_number='$tel' WHERE id='$pid'";
		$row = $dbh->prepare($sql);
		if($row->execute()){
			echo '{"status":1}';
		}else{
			echo '{"status":0,"error_message":"แก้ไขไม่สำเร็จ"}';
		}

	}else{
		echo '{"status":0,"error_message":"ป้อนข้อมูลไม่ครบ"}';
	}
}


 ?>