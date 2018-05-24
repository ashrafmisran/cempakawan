<?php

	include 'function.php';
 
 	/*Debit cash account*/

	$debit['account']	  		= 1; /*Cash account: 1*/
	//$debit['subaccount']  		= $_POST['pay-to']; /*Cash at hand:0; Bank Islam:1; Maybank:2*/
	$debit['subaccount']  		= 1; /*Cash at hand:0; Bank Islam:1; Maybank:2*/
	$debit['type']        		= 'Self';
	//$debit['amount']	  		= $_POST['amount'];
	$debit['amount']	  		= 150;

	/*Seperate payment and credit either receivable fee (incurred) or prepayment (next months)*/
	
	$credit['type']        		= 'Student';
	//$credit['subaccount']	 	= $_POST['id']; /*Student ID*/
	$credit['subaccount']	 	= 1; /*Student ID*/

	/*Receivable fee*/
	$credit[1]['account'] 		= 11; /*Code for Receivable fee acc*/
	$sql = "SELECT (SUM(debit) - SUM(credit)) AS balance FROM transactions WHERE account = 11 AND subaccount = ".$credit['subaccount']." AND type = 'Student'";
	$run = $conn->query($sql);
	if ($run->num_rows > 0) {
		$row = $run->fetch_assoc();
		$credit[1]['amount']  		= $row['balance'];  /*Get the amount from DB (Receivable fee for that particular student)*/
		if ( $row['balance'] == NULL ){
			$credit[1]['amount']  	= 0;
		}
	}else{
		$credit[1]['amount']  		= 0;
	}
	if($debit['amount'] < $credit[1]['amount'] ){
		$credit[1]['amount']  		= $debit['amount'];	
	}

	/*Prepayment from student*/
	$credit[2]['account'] 		= 6; /*Code for prepayment from student*/
	$credit[2]['amount']  		= $debit['amount'] - $credit[1]['amount']; /*Balance after settle receivable fee amount*/

	
	/*Insert into database transactions table*/
	$sql = "INSERT INTO transactions (account,subaccount,type,description,debit,credit) 
				VALUES (".$debit['account'].",".$debit['subaccount'].",'".$debit['type']."','Receive payment from student',".$debit['amount'].",0),
				       (".$credit[1]['account'].",".$credit['subaccount'].",'".$credit['type']."','Settle o/s fee',0,".$credit[1]['amount']."),
				       (".$credit[2]['account'].",".$credit['subaccount'].",'".$credit['type']."','Set as prepayment for next month(s)',0,".$credit[2]['amount'].")";
	$run = $conn->query($sql);

	/*Remove zero credit and zero debit rows*/
	$sql = "DELETE FROM transactions WHERE debit = 0 AND credit = 0";
	$run = $conn->query($sql);

?>