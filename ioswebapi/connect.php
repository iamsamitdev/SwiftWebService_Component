<?php
$dsn = 'mysql:host=localhost;port=3306;dbname=university_book';
$username = 'root';
$password = '1234';

$options = array(
    PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8',
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
); 

try{
	$dbh = @new PDO($dsn, $username, $password, $options);
	//die(json_encode(array('outcome' => true)));
}catch(PDOException $ex){
    die(json_encode(array('outcome' => false, 'message' => 'Unable to connect')));
}

?>