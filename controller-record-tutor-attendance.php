<?php
	include 'function.php';
	$attendance = new Transaction;
	$attendance->setcolumns(array('id','data_id'));
	$attendance->setvalues(array(1,3));
	$attendance->record($conn);