<?php
	include 'function.php';

	// Get variable value
	$fullname		= sanitize( $_POST['fullname'] );
	$mykad			= sanitize( $_POST['mykad'] );
	$residential	= sanitize( $_POST['residential'] );
	$school_name	= sanitize( $_POST['school-name'] );
	$level			= sanitize( $_POST['level'] );
	$phone			= sanitize( $_POST['phone'] );
	$remark			= sanitize( $_POST['remark'] );


	$run3				= $conn->query( "INSERT INTO students (name,level,mykad,residential,school_name,phone_no,remark) VALUES ('$fullname','$level','$mykad','$residential','$school_name','$phone','$remark')" );

	if ($run1 != FALSE && $run3 != FALSE) {
		$_SESSION['noti']	= 'Registration succeed';
		header( 'Location: '.$_SERVER['HTTP_REFERER'] );
	}else{
		$_SESSION['noti']	= 'Registration failed';
		header( 'Location: '.$_SERVER['HTTP_REFERER'] );
	}

?>