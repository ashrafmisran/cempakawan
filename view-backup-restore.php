<main class="m-2">
	<h2>Backup/Restore Database</h2>
	<h5>Backup</h5>
	<div>
		<a class="mb-1 btn btn-primary" href="backup.php" target="_blank">Backup</a>
	</div>
	<h5>Restore</h5>
	<div class="input-group"><!-- 
		<select class="form-control">
			<?php 
				$dir = opendir('backup');
				while(($filename = readdir($dir)) !== FALSE) {
					if($filename == '.' OR $filename == '..') continue;?>
				<option><?php echo $filename; ?></option>
			<?php } ?>
		</select> -->
		<a class="btn btn-primary mr-1" href="restore.php" target="_blank">Restore</a>
	</div>
</main>