<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
$database = 'cempakawan';
$user = 'root';
$pass = '';
$host = 'localhost';
$dir = dirname(__FILE__) . '\db\dump.sql';
echo "<h3>Backing up database to '<code>{$dir}</code>'</h3>";
exec("cd ../../mysql/bin");
exec("mysqldump.exe -u root cempakawan > cempakawan.sql");
?>