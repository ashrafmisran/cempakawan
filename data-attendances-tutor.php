<?php

header('Content-Type: application/json');
include 'function.php';

$classes = array();



$tutor = $_GET['tutor'];
$class = $_GET['class'];

$sql = "SELECT * FROM attendances_tutors WHERE tutor = $tutor AND class = $class AND timeout <> '0000-00-00 00:00:00' ORDER BY id DESC LIMIT 1";
$run = $conn->query($sql);
;

while ($row = $run->fetch_assoc()) {
    array_push($classes, $row);
}


print json_encode($classes);

?>