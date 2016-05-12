<?php 
include 'connect.php';
header('Content-type:application/json');

if($_POST)
{
	$firstname = $_POST['firstname'];
	$lastname = $_POST['lastname'];
	$email = $_POST['email'];
	$tel = $_POST['tel'];

	//  เช็คว่าป้อนข้อมูลครบหรือไม่
	if(!empty($firstname) and !empty($lastname) and !empty($email) and !empty($tel))
	{
		// บันทึกข้อมูลลงตาราง
		$sql = "INSERT INTO personnel(firstname,lastname,email,mobile_number) 
			VALUES('$firstname','$lastname','$email','$tel')";
		$row = $dbh->prepare($sql);
		if($row->execute()){
			echo '{"status":1}';
		}else{
			echo '{"status":0,"error_message":"บันทึกไม่สำเร็จ"}';
		}

	}else{
		echo '{"status":0,"error_message":"ป้อนข้อมูลไม่ครบ"}';
	}
}

?>