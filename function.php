<?php
	session_start();
	include 'connect.php';
	include 'class-autoload.php';

	function sanitize($str){
		return $str;
	}

	date_default_timezone_set('Asia/Kuala_Lumpur');
?>