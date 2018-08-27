<?php 
	include 'function.php';

	$tutor = $_GET['tutor'];
	$class = $_GET['class'];
	$time  = date("Y-m-d H:i:s");

	$check = "SELECT * FROM attendances_tutors WHERE tutor = $tutor AND class = $class AND timeout = '0000-00-00 00:00:00'";
	$run = $conn->query($check);

	if ($run->num_rows > 0) {
		$sql = "UPDATE attendances_tutors SET timeout = '$time' WHERE tutor = $tutor AND class = $class AND timeout = '0000-00-00 00:00:00'";
		$run = $conn->query($sql);
		if ($run != FALSE) {
			echo('Clock Out');
		}
	} else {
		$sql = "INSERT INTO attendances_tutors (tutor,class,timein) VALUES ($tutor,$class,'$time')";
		$run = $conn->query($sql);
		echo('Clock In');
	}

?>