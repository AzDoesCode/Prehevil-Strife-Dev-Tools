<?php
	$servername = "localhost";
	$username = "admin";
	$password = "daanisbbg";
	
	try {
		$conn = new PDO("mysql:host=$servername;", $username, $password);
		echo "<br>Connected successfully";
	} catch(PDOException $e) {
		echo "<br>Connection failed: " . $e->getMessage();
	}
?>