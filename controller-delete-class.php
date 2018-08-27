<?php
	include 'function.php';
	$id = $_GET['id'];
	$time = date("Y-m-d H:i:s");

	$sql = "UPDATE classes SET active = 0 WHERE id = $id";
	$run = $conn->query($sql);

	$sql2 = "UPDATE enrolls SET quit_on = '$time', active = 0 WHERE class = $id";	
	$run2 = $conn->query($sql2);


	if ($run != FALSE AND $run2 != FALSE) {
		header('Location: '.$_SERVER['HTTP_REFERER']);
	}else{
		echo('Error');
	}
?>