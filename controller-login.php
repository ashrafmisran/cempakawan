<?php

	include 'function.php';

	if( isset($_SERVER['HTTP_REFERER']) ){

		$email 		= sanitize($_POST['email']);
		$password	= md5( sanitize($_POST['password']) );

		$run 		= $conn->query("SELECT * FROM users WHERE email = '$email' AND password = '$password'");

		if ($run->num_rows > 0) {

			$row = $run->fetch_assoc();
			$_SESSION['user']['id'] = $row['id'];
			$_SESSION['user']['fullname'] = $row['fullname'];
			$_SESSION['user']['class'] = 100;
			header( 'Location: '.$_SERVER['HTTP_REFERER'] );

		}else{

			$_SESSION['noti'] = 'No user found';
			header( 'Location: '.$_SERVER['HTTP_REFERER'] );

		}

	}

?>