<?php 

	include 'function.php';

	$type	 		= sanitize( $_POST['type'] );
	$subject 		= sanitize( $_POST['subject'] );
	$level   		= sanitize( $_POST['level'] );
	$tutor 			= sanitize( $_POST['tutor'] );
	$tutor_rate	    = sanitize( $_POST['tutor-rate'] );
	$group 			= sanitize( $_POST['group'] );

	
	$sql = "INSERT INTO classes (is_group,subject,level,group_no,tutor,tutor_rate,branch) VALUES ($type,'$subject','$level',$group,'$tutor',$tutor_rate,".$_SESSION['branch_no'].")";
	$run = $conn->query($sql);

	if ($run != FALSE) {
		$_SESSION['noti']	= 'Registration succeed';
		header( 'Location: classes-list');
	}else{
		$_SESSION['noti']	= 'Registration failed';
		header( 'Location: '.$_SERVER['HTTP_REFERER'] );
	}

?>