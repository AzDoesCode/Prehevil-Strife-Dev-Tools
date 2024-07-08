<?php
	include 'connect.php';

	$sql = file_get_contents("sql/data_wipe.sql");
	$command = $conn->exec($sql);

	$sql = file_get_contents("sql/data_create.sql");
	$qr = $conn->exec($sql);

	$sql = file_get_contents("sql/data_insert.sql");
	$qr = $conn->exec($sql);
	$conn=null;
?>