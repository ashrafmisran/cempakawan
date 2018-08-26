<?php
date_default_timezone_set("Asia/Kuala_Lumpur");
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
$database = 'nilalcom_cempakawan_dev';
$user = 'nilalcom_ashrafm';
$pass = 'Mukmin11?';
$host = 'localhost';
//$dir = dirname(__FILE__) . '\dump.sql';
$time = date("Ymd-His");
$dir = 'backup/backup-'.$time.'.sql';
echo "<h3>Backing up database to `<code>{$dir}</code>`</h3>";
exec("mysqldump.exe --user={$user} --password={$pass} --host={$host} {$database} > $dir", $output);
var_dump($output);

echo "<script>window.close()</script>";