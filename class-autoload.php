<?php

	$dir = 'class/';

	if (is_dir($dir)){
	  if ($dh = opendir($dir)){
	    while (($file = readdir($dh)) !== false){
			if($file == '.' OR $file == '..'){
				continue;
			}
			include "class/$file";
	    }
	    closedir($dh);
	  }
	}

