<?php
	include 'function.php';

	// Get variable value
	$fullname		= sanitize( $_POST['fullname'] );
	$mykad			= sanitize( $_POST['mykad'] );
	$phone			= sanitize( $_POST['phone'] );


	$run			= $conn->query( "INSERT INTO tutors (name,mykad,phone) VALUES ('$fullname','$mykad','$phone')" );

	if ($run != FALSE) {
		$_SESSION['noti']	= 'Registration succeed';
		header( 'Location: '.$_SERVER['HTTP_REFERER'] );
	}else{
		$_SESSION['noti']	= 'Registration failed';
		header( 'Location: '.$_SERVER['HTTP_REFERER'] );
	}

?>