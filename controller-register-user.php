<?php

	include 'function.php';

	if( isset($_SERVER['HTTP_REFERER']) ){

		$email 		= sanitize($_POST['email']);
		$password	= md5( sanitize($_POST['password']) );
		$fullname	= sanitize($_POST['fullname']);

		$run 		= $conn->query("INSERT INTO users(email,password,fullname) VALUES( '$email' , '$password' , '$fullname' )" );

		if( $run != FALSE ){

			$_SESSION['noti']	= 'Registration success!';
			header( 'Location: index.php' );

		}else{

			$_SESSION['noti']	= 'Failed register new user';
			header( 'Location: '.$_SERVER['HTTP_REFERER'] );

		}

	}

?>