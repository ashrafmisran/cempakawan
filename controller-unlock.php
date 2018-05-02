<?php
	session_start();
	include 'function.php';

	$sql = "SELECT * FROM users WHERE id = ".$_SESSION['user']['id']." AND password = '".$_POST['password']."'";
	$run = $conn->query($sql);

	if ($run->num_rows > 0) {
		session_unset( $_SESSION['user']['locked'] );
		header('Location: ?m=');
	}else{
		$_SESSION['noti'] = '<div class="alert alert-danger my-2">Wrong password</div>';
		header('Location: '.$_SERVER['HTTP_REFERER']);
	}

?>