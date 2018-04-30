<?php

	include 'function.php';
	$email = sanitize( $_POST['email'] );

	$password			= random_int(100000, 999999) .'-'. 'ASH-1';
	$password_encode	= md5($password);

	$run				= $conn->query("UPDATE users SET password = '$password_encode' WHERE email = '$email' ");

	if ($run != FALSE) {

		$to		= $email;
		$subject= 'Password reset for Cempakawan Management System';
		$message= "Your new password is <pre>$password</pre>. Click <a href=\"#\">HERE</a> to log in. ";
		$headers= 'From: Cempakawan Management System <no-reply@cempakawan.edu.my';
		
		mail($to, $subject, $message, $headers);
		header(' Location: ?m=password-reset-success ');

	}else{

		$_SESSION['noti']	= 'No email found';
		header('Location: '.$_SERVER['HTTP_REFERER']);

	}


?>