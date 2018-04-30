<?php
	$servername = 'localhost';
	$username	= 'root';
	$password	= '';
	$dbname		= 'cempakawan';

	$conn = new mysqli($servername, $username, $password, $dbname);

	if ($conn->error) {
		die('Connection failed: ');
	}
?>