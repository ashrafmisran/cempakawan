<?php

header('Content-Type: application/json');
include 'function.php';
$data = array();



$date_from = strtotime($_GET['start']);
$date_to = strtotime($_GET['end']);

function list_days($date_from,$date_to){
    $arr_days = array();
    $day_passed = ($date_to - $date_from); //seconds
    $day_passed = ($day_passed/86400); //days

    $counter = 1;
    $day_to_display = $date_from;
    $arr_days[] = date('o-m-d',$day_to_display);
    while($counter <= $day_passed){
        $day_to_display += 86400;
        //echo date("F j, Y \n", $day_to_display);
        $arr_days[] = date('o-m-d',$day_to_display);
        $counter++;
    }

    return $arr_days;
}



$datelist = list_days($date_from,$date_to);

$date_from = date("Y-m-d", $date_from);

for ($i=0; $i < count($datelist); $i++) { 

	$date = $datelist[$i];

	$sql = "SELECT '$date' AS date, (SELECT count(*) FROM `students` WHERE `registered_on` <= '$date 23:59:59' AND (quit_on > '$date 23:59:59' OR quit_on = '0000-00-00 00:00:00')) AS active,(SELECT count(DISTINCT subaccount) FROM `transactions` WHERE `description` = 'Receive payment from student' AND `transactions`.`timestamp` between '$date_from 00:00:00' AND '$date 23:59:59') AS paid_students,(SELECT count(*) FROM `students` WHERE `registered_on` <= '$date 23:59:59' AND (quit_on > '$date 23:59:59' OR quit_on = '0000-00-00 00:00:00')) AS amount_expected,(SELECT sum(debit) FROM `transactions` WHERE description = 'Receive payment from student' AND `transactions`.`timestamp` between '$date_from 00:00:00' AND '$date 23:59:59') AS amount_paid";
	$run = $conn->query($sql);
	$row = $run->fetch_assoc();

	$data[$i]['date'] = $row['date'];
	$data[$i]['total_students'] = $row['active'];
	$data[$i]['paid_students'] = $row['paid_students'];
	$data[$i]['total_unpaid_students'] = $row['active']-$row['paid_students'];
	$data[$i]['amount_expected'] = $row['amount_expected'];
	$data[$i]['amount_paid'] = $row['amount_paid'];
}



print json_encode($data);

?>