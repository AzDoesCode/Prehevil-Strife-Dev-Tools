<?php
	include 'connect.php';

	$sql = file_get_contents("sql/user_wipe.sql");
	$command = $conn->exec($sql);

	$sql = file_get_contents("sql/user_create.sql");
	$qr = $conn->exec($sql);
	$conn=null;
?>