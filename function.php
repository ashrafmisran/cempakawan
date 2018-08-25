<?php
	session_start();
	include 'connect.php';
	include 'restore.php';
	include 'class-autoload.php';

	function sanitize($str){
		return $str;
	}
?>