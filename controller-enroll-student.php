<?php 

	include 'function.php';

	$students	 		= $_POST['student'];
	$classes   	 		= $_POST['class'];

	foreach ($students as $student) {
		foreach ($classes as $class) {
			$sql = "INSERT INTO enrolls (student,class) VALUES ($student,$class)";
			$run = $conn->query($sql);
		}
	}


	if ($run != FALSE) {
		$_SESSION['noti']	= 'Registration succeed';
		header( 'Location: '.$_SERVER['HTTP_REFERER'] );
	}else{
		$_SESSION['noti']	= 'Registration failed';
		header( 'Location: '.$_SERVER['HTTP_REFERER'] );
	}

?>