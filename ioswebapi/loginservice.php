<?php
include("connect.php");
header('Content-type:application/json');

if($_POST)
{
	$username = $_POST['username'];
	$password = $_POST['password'];

	if($username && $password)
	{
		$sql = "SELECT id,username,password from personnel WHERE username='$username' and password='$password'";
		$row = $dbh->prepare($sql);
		$row->execute();
		$result = $row->fetch();

		$pid 			= $result['id'];
		/*$firstname 		= $result['firstname'];
		$lastname 		= $result['lastname'];
		$email 			= $result['email'];
		$mobile_number 	= $result['mobile_number'];*/

		// ตรวจสอบว่าพบข้อมูลหรือไม่
		if($row->rowCount())
		{
			/*echo "{
				\"success\":1,
				\"pid\":\"$pid\",
				\"firstname\":\"$firstname\",
				\"lastname\":\"$lastname\",
				\"email\":\"$email\",
				\"mobile_number\":\"$mobile_number\",
			}";*/
			echo "{
				\"success\":1,
				\"pid\":\"$pid\"
			}";

		}else{
			/*echo "{
				\"success\":0,
				\"pid\":\"$pid\",
				\"firstname\":\"$firstname\",
				\"lastname\":\"$lastname\",
				\"email\":\"$email\",
				\"mobile_number\":\"$mobile_number\",
				\"error_message\":\"Invalid Username/Password\"
			}";*/
			echo "{
				\"success\":0,
				\"pid\":\"$pid\",
				\"error_message\":\"Invalid Username/Password\"
			}";

		}
	}
}
?>