<?php
	include 'function.php';
	date_default_timezone_set("Asia/Kuala_Lumpur");

	$mykad = $_POST['mykad'];
	$time  = date("Y-m-d H:i:s",time());
	/*$lasttime = date("Y-m-d H:i:s",time()-1.5*60*60);*/
	$last_5_min = date("Y-m-d H:i:s",time()-10*60);



	$sql = "SELECT id FROM students WHERE mykad = '$mykad'";
	$run = $conn->query($sql);
	$row = $run->fetch_assoc();
	$student = $row['id'];

	$sql = "SELECT id FROM attendances WHERE student = $student AND time_in > '$last_5_min' AND time_out = '0000-00-00 00:00:00'";
	$run = $conn->query($sql);
	$row = $run->fetch_assoc();
	echo $id = $row['id'];
	exit();

	$sql = "INSERT INTO attendances (student,time_in) VALUES ($student,'$time')";
	$run = $conn->query($sql);