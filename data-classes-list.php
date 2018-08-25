<?php

header('Content-Type: application/json');
include 'function.php';

$classes = array();



$id = $_GET['id'];

$sql = "SELECT * FROM classes WHERE tutor = $id";
$run = $conn->query($sql);
;

while ($row = $run->fetch_assoc()) {
    array_push($classes, $row);
}


print json_encode($classes);

?>