<?php 

	include 'function.php';

	$subject = $_POST['subject'];
	$level   = $_POST['level'];
	$tutor   = $_POST['tutor'];

	$sql = "INSERT INTO classes (subject,level,tutor) VALUES ('$subject','$level','$tutor')";

?>