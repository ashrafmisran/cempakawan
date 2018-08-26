<?php if(isset($_SESSION['branch']) AND $_SESSION['branch'] != '') $_SESSION['branch'] = ''; ?>
<h4 class="text-center my-4">Choose branch:</h4>
<div id="branch-selector" class="row">
	<?php 
		$sql = "SELECT * FROM branches";
		$run = $conn->query($sql);
		while ($row = $run->fetch_assoc()) {
	?>
		<div class="col text-center p-4"><a href="controller-set-branch.php?branch=<?php echo($row['location']) ?>&branch-no=<?php echo($row['id']) ?>" class="btn-primary btn-block btn btn-lg"><?php echo($row['location']) ?></a></div>
	<?php } ?>
</div>
<div class="row">
	<div class="col-4 offset-md-4">
		<a href="controller-logout.php" class="btn btn-block btn-danger btn-lg text-white">Log Out</a>
	</div>	
</div>	