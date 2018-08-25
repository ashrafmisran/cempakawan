<?php

	include 'function.php';
 
 	/*Debit payable to tutor*/
	$debit['account']	  		= 14; 
	$debit['subaccount']  		= $_POST['tutor']; /*Cash at hand:0; Bank Islam:1; Maybank:2*/
	$debit['type']        		= 'Tutor';
	$debit['amount']	  		= $_POST['amount'];

	/*Credit cash*/	
	$credit['type']        		= 'Tutor';
	$credit['subaccount']	 	= $_POST['tutor']; /*Student ID*/
	$credit['account'] 		= 1;
	$credit['amount']  		= $debit['amount'];

	
	/*Insert into database transactions table*/
	$sql = "INSERT INTO transactions (account,subaccount,type,description,debit,credit) 
				VALUES (".$debit['account'].",".$debit['subaccount'].",'".$debit['type']."','Payroll payment',".$debit['amount'].",0),
				       (".$credit['account'].",".$credit['subaccount'].",'".$credit['type']."','Payment to tutor',0,".$credit['amount'].")";
	$run = $conn->query($sql);

	$redirect = 'Location: index.php?m=add-payment-to-tutor';
	header($redirect);

?>