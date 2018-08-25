<?php
	$servername = 'localhost';
	$username	= 'root';
	$password	= '';
	$dbname		= 'cempakawan_v2';

	$conn = new mysqli($servername, $username, $password, $dbname);

	if ($conn->error) {
		die('Connection failed: ');
	}
?>
