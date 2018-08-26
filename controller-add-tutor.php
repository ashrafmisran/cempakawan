<?php
	include 'function.php';

	// Get variable value
	$fullname		= sanitize( $_POST['fullname'] );
	$mykad			= sanitize( $_POST['mykad'] );
	$phone			= sanitize( $_POST['phone'] );
	$bank			= sanitize( $_POST['bank'] );
	$acc_no			=  sanitize( $_POST['acc-no'] );


	$run			= $conn->query( "INSERT INTO tutors (name,mykad,phone,bank,acc_no) VALUES ('$fullname','$mykad','$phone','$bank','$acc_no')" );

	if ($run != FALSE) {
		$_SESSION['noti']	= 'Registration succeed';
		header( 'Location: '.$_SERVER['HTTP_REFERER'] );
	}else{
		$_SESSION['noti']	= 'Registration failed';
		header( 'Location: '.$_SERVER['HTTP_REFERER'] );
	}

?>