<?php
	include 'function.php';
	$student = $_GET['student'];
	$class = $_GET['class'];
	$time = date("Y-m-d H:i:s");

	$sql = "UPDATE enrolls SET quit_on = '$time', active = 0 WHERE student = $student AND class = $class";
	$run = $conn->query($sql);

	if ($run != FALSE) {
		header('Location: '.$_SERVER['HTTP_REFERER']);
	}else{
		echo('Error');
	}
?>