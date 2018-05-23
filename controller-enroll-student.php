<?php 

	include 'function.php';

	$student	 		= sanitize( $_POST['student'] );
	$class   		= sanitize( $_POST['class'] );

	$sql = "INSERT INTO enrolls (student,class) VALUES ($student,$class)";
	$run = $conn->query($sql);

	if ($run != FALSE) {
		$_SESSION['noti']	= 'Registration succeed';
		header( 'Location: '.$_SERVER['HTTP_REFERER'] );
	}else{
		$_SESSION['noti']	= 'Registration failed';
		header( 'Location: '.$_SERVER['HTTP_REFERER'] );
	}

?>