<?php
	$servername = 'localhost';
	$username	= 'nilalcom_ashrafm';
	$password	= 'Mukmin11?';
	$dbname		= 'nilalcom_cempakawan_dev';

	$conn = new mysqli($servername, $username, $password, $dbname);

	if ($conn->error) {
		die('Connection failed: ');
	}
?>
