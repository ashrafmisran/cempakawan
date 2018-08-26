<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
$database = 'nilalcom_cempakawan_dev';
$user = 'nilalcom_ashrafm';
$pass = 'Mukmin11?';
$host = 'localhost';
$folder = 'backup';
if (is_dir($folder)){
  if ($dh = opendir($folder)){
    while (($file = readdir($dh)) !== false){
      $backup_file = $file;
    }
    closedir($dh);
  }
}

$dir = 'backup/'.$backup_file;
echo "<h3>Restoring database from `<code>{$dir}</code>`</h3>";
exec("mysqldump.exe --user={$user} --password={$pass} --host={$host} {$database} < $dir", $output);
var_dump($output);

echo "<script>window.close()</script>";