<?php
	include 'function.php';

	// Get variable value
	$fullname		= sanitize( $_POST['fullname'] );
	$mykad			= sanitize( $_POST['mykad'] );
	$residential	= sanitize( $_POST['residential'] );
	$school_name	= sanitize( $_POST['school-name'] );
	$level			= sanitize( $_POST['level'] );
	$phone			= sanitize( $_POST['phone'] );


	$run				= $conn->query( "INSERT INTO students (name,level,mykad,residential,school_name,phone_no) VALUES ('$fullname','$level','$mykad','$residential','$school_name','$phone')" );

	if ($run != FALSE) {
		$_SESSION['noti']	= 'Registration succeed';
		echo $redirect = 'Location: controller-charge-registration.php?student='.$conn->insert_id;
		header( $redirect);
	}else{
		$_SESSION['noti']	= 'Registration failed';
		header( 'Location: '.$_SERVER['HTTP_REFERER'] );
	}

?>