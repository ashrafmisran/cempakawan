<?php
	include_once 'connect.php';

	$user_id			= 1;
	$title		        = $_POST['idea'];
	$desc  	   			= $_POST['desc'];
	if (isset($_POST['is_anonymous'])) {
		$is_anonymous 	= 'true';
	}else{
		$is_anonymous 	= 'false';
	}


	$sql = 'INSERT INTO ideas (user_id,title,description,category_id,attachment,tags_id) VALUES('.$user_id.',"'.$title.'","'.$desc.'",0,"","")';
	$run = $conn->query($sql);
	header('Location: '.$_SERVER['HTTP_REFERER']);

?>