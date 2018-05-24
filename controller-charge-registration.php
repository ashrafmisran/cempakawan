<?php

	include 'function.php';
 
 	/*Debit Receivable fee*/

	$debit['account']	  		= 11; /*Receivable fee: 11*/
	$debit['subaccount']  		= $_GET['student']; /*Student ID*/
	$debit['type']        		= 'Student';
	$debit['amount']	  		= 60; // Set by settings (TBD)


	/*Credit income*/

	$credit['type']        		= 'Student';
	//$credit['subaccount']	 	= $_POST['student']; /*Student ID*/
	$credit['subaccount']	 	= $_GET['student']; /*Student ID*/

	$credit[1]['account'] 		= 7; /*Code for Income > Fee & Book acc*/
	$credit[1]['amount']  		= $debit['amount'];

	/*Insert into database transactions table*/
	$sql = "INSERT INTO transactions (account,subaccount,type,description,debit,credit) 
				VALUES (".$credit[1]['account'].",".$credit['subaccount'].",'".$credit['type']."','Registration fee',0,".$credit[1]['amount']."),
				(".$debit['account'].",".$debit['subaccount'].",'".$debit['type']."','Amount due for registration fee',".$debit['amount'].",0)";
	$run = $conn->query($sql);

	if ($run != FALSE) {
		$_SESSION['noti']	= 'Registration succeed';
		$redirect = 'Location: index.php?m=student-registration';
		header( $redirect);
	}

?>