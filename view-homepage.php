<?php if(isset($_SESSION['branch']) AND $_SESSION['branch'] != '') $_SESSION['branch'] = ''; ?>
<h4 class="text-center my-4">Choose branch:</h4>
<div id="branch-selector" class="row">
	<?php 
		$sql = "SELECT * FROM branches";
		$run = $conn->query($sql);
		while ($row = $run->fetch_assoc()) {
	?>
		<div class="col text-center p-4"><a href="branch-menu&branch=<?php echo($row['location']) ?>" class="btn-primary btn-block btn btn-lg"><?php echo($row['location']) ?></a></div>
	<?php } ?>
</div>