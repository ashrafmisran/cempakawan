<?php
	include 'function.php';
	$id = $_GET['id'];
	$time = date("Y-m-d H:i:s");

	$sql = "UPDATE students SET quit_on = '$time', active = 0 WHERE id = $id";
	$run = $conn->query($sql);

	if ($run != FALSE) {
		header('Location: '.$_SERVER['HTTP_REFERER']);
	}else{
		echo('Error');
	}
?>