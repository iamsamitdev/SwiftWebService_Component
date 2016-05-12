<?php
include("connect.php");

$sql = "SELECT * from personnel";
$row = $dbh->prepare($sql);
$row->execute();

// ตัวแปรสำหรับเก็บ json
$json_data = array();

foreach ($row as $rec) {

	    $json_array['id']=$rec['id'];  
	    $json_array['instuctor_id']=$rec['instuctor_id'];  
	    $json_array['firstname']=$rec['firstname'];  
	    $json_array['lastname']=$rec['lastname'];
	    $json_array['nickname']=$rec['nickname'];
	    $json_array['faculty']=$rec['faculty'];
	    $json_array['position']=$rec['position'];
	    $json_array['pesonal_id']=$rec['pesonal_id'];
	    $json_array['email']=$rec['email'];
	    $json_array['mobile_number']=$rec['mobile_number'];
	    $json_array['phone_number']=$rec['phone_number'];
	    $json_array['pic_profile']=$rec['pic_profile'];
	    $json_array['date_create']=$rec['date_create'];
	    $json_array['status']=$rec['status'];

	    //here pushing the values in to an array  
	    array_push($json_data,$json_array);
}
	//echo "<pre>";
	echo json_encode($json_data,JSON_PRETTY_PRINT);
	//echo "</pre>";

?>