<?php

include_once "connect.php";

// Post the variables from flash
$username = $_POST['username'];
$password = $_POST['password'];

$query = "SELECT * FROM users WHERE username='$username' AND password='$password' ";

$result = $conn->query($query);

if($result->num_rows > 0){
	echo "displayMsg=Okay";
}else{
	echo "displayMsg=No record";
}

?>