<?php if( !isset($_SESSION['branch']) OR $_SESSION['branch'] != '') { ?>
	<h4 class="text-center my-4">Choose branch:</h4>
	<div id="branch-selector" class="row">
		<div class="col-4 offset-md-4 text-center p-4"><a href="controller-set-branch.php?branch=Semarak&branch-no=3" class="btn-primary btn-block btn btn-lg">Semarak</a></div>
	</div>
	<div class="row">
		<div class="col-4 offset-md-4">
			<a href="controller-logout.php" class="btn btn-block btn-danger btn-lg text-white">Log Out</a>
		</div>	
	</div>	
<?php 
	} else { 

		include 'view-branch-menu.php';

	}

?>
