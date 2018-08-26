<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
$database = 'nilalcom_cempakawan_dev';
$user = 'nilalcom_ashrafm';
$pass = 'Mukmin11?';
$host = 'localhost';
$folder = 'backup';

function getLatestFile($directoryPath) {
    $directoryPath = rtrim($directoryPath, '/');

    $max = ['path' => null, 'timestamp' => 0];

    foreach (scandir($directoryPath, SCANDIR_SORT_NONE) as $file) {
        $path = $directoryPath . '/' . $file;

        if (!is_file($path)) {
            continue;
        }

        $timestamp = filemtime($path);
        if ($timestamp > $max['timestamp']) {
            $max['path'] = $path;
            $max['timestamp'] = $timestamp;
        }
    }

    return $max['path'];
}

$backup_file = getLatestFile($folder);

/*if (is_dir($folder)){
  if ($dh = opendir($folder)){
    while (($file = readdir($dh)) !== false){
      $backup_file = $file;
    }
    closedir($dh);
  }
}*/

$dir = 'backup/'.$backup_file;
echo "<h3>Restoring database from `<code>{$dir}</code>`</h3>";
exec("mysqldump.exe --user={$user} --password={$pass} --host={$host} {$database} < $dir", $output);
var_dump($output);

echo "<script>window.close()</script>";