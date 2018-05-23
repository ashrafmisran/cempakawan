<?php

	include 'function.php';
 
	$debit['account']	  		= 1;
	$debit['subaccount']  		= 0;
	$debit['amount']	  		= 20;
	$debit['type']        		= 'Self';

	$credit[1]['account'] 		= 11;
	$credit[1]['subaccount'] 	= 1;
	$credit[1]['amount']  		= 5;
	$credit['type']        		= 'Student';
	$credit[2]['account'] 		= 6;
	$credit[2]['subaccount'] 	= 1;
	$credit[2]['amount']  		= 15;

	$description		  		= 'Receive payment from student';

	$sql = "INSERT INTO transactions (account,subaccount,type,description,debit,credit) 
				VALUES (".$debit['account'].",".$debit['subaccount'].",'".$debit['type']."','".$description."',".$debit['amount'].",0),
				       (".$credit[1]['account'].",".$credit[1]['subaccount'].",'".$credit['type']."','".$description."',0,".$credit[1]['amount']."),
				       (".$credit[2]['account'].",".$credit[2]['subaccount'].",'".$credit['type']."','".$description."',0,".$credit[2]['amount'].")";
	$run = $conn->query($sql);

?>