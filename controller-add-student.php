<?php
	include 'function.php';

	// Get variable value
	$std_fullname		= sanitize( $_POST['std-fullname'] );
	$std_mykad			= sanitize( $_POST['std-mykad'] );
	$std_bod			= sanitize( $_POST['std-bod'] );
	$std_school_name	= sanitize( $_POST['std-school-name'] );
	if ($_POST['std-sex'] == 'Male'){
		$is_male = 1;
	}else{
		$is_male = 0;
	}

	$parent_fullname	= sanitize( $_POST['parent-fullname'] );
	$parent_mykad 		= sanitize( $_POST['parent-mykad'] );
	$parent_residential	= sanitize( $_POST['parent-residential'] );
	$parent_mobile		= sanitize( $_POST['parent-mobile'] );
	$parent_email		= sanitize( $_POST['parent-email'] );


	// Insert parent profile first

	$run1				= $conn->query( "INSERT INTO parents (name,mykad,residential,mobile,email) VALUES ('$parent_fullname','$parent_mykad','$parent_residential','$parent_mobile','$parent_email')" );

	$run2				= $conn->query( "SELECT id FROM parents WHERE mykad = '$parent_mykad'" );
	$row2				= $run2->fetch_assoc();
	$parent_id 			= $row2['id'];

	// Insert student profile

	$run3				= $conn->query( "INSERT INTO students (name,mykad,bod,is_male,school_name,parent_id) VALUES ('$std_fullname','$std_mykad','$std_bod',$is_male,'$std_school_name',$parent_id)" );

	if ($run1 != FALSE && $run3 != FALSE) {
		$_SESSION['noti']	= 'Registration succeed';
		header( 'Location: '.$_SERVER['HTTP_REFERER'] );
	}else{
		$_SESSION['noti']	= 'Registration failed';
		header( 'Location: '.$_SERVER['HTTP_REFERER'] );
	}

?>