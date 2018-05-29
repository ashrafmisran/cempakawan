<?php

	$dir = 'classes/';

	if (is_dir($dir)){
	  if ($dh = opendir($dir)){
	    while (($file = readdir($dh)) !== false){
			if($file == '.' OR $file == '..'){
				continue;
			}
			include "classes/$file";
	    }
	    closedir($dh);
	  }
	}

