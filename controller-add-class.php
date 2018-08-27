<?php 

	include 'function.php';

	$type	 		= sanitize( $_POST['type'] );
	$subject 		= sanitize( $_POST['subject'] );
	$level   		= sanitize( $_POST['level'] );
	$group 			= sanitize( $_POST['group'] );
	$tutor 			= sanitize( $_POST['tutor'] );
	$tutor_rate		= sanitize( $_POST['tutor-rate'] );
	$day 			= sanitize( $_POST['day'] );
	$start 			= $_POST['start'];
	$end 			= $_POST['end'];

	
	echo $sql = "INSERT INTO classes (is_group,subject,level,group_no,tutor,tutor_rate,branch,day,start_on,end_on,active) VALUES ($type,'$subject',$level,$group,$tutor,$tutor_rate,".$_SESSION['branch_no'].",$day,'$start','$end',1)";
	$run = $conn->query($sql);

	if ($run != FALSE) {
		$_SESSION['noti']	= 'Registration succeed';
		header( 'Location: classes-list');
	}else{
		$_SESSION['noti']	= 'Registration failed';
		header( 'Location: '.$_SERVER['HTTP_REFERER'] );
	}

?>