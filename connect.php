<?php

	$db = "admin";
	$un = "root";
	$pw = "root";
	$hn = "localhost";

	$conn = new mysqli($hn, $un, $pw, $db);

	if($conn->connect_error) die ("Fatal Error");

	//$conn->close();
?>