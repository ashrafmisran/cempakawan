<?php

	if( isset($_SESSION['noti']) && $_SERVER['HTTP_REFERER'] == 'controller-register.php' ){
		echo '<div class="alert alert-success">'.$_SESSION['noti'].'</div>';
		session_unset( $_SESSION['noti'] );
	}

?>
<div class="card m-4">
	<form action="controller-login.php" method="post">
		<div class="card-header">
			<h2>Log In</h2>
		</div>
		<div class="card-body">
			<div class="form-group">
				<label for="email">Email</label>
				<input id="email" name="email" class="form-control" type="email" required autofocus></input>
			</div>
			<div class="form-group">
				<label for="password">Password</label>
				<input id="password" name="password" class="form-control" type="password" minlength="6" maxlength="12" required></input>
			</div>
		</div>
		<div class="card-footer text-center">
			<button type="submit" class="btn btn-primary">Log In</button>

			<?php
				if( isset($_SESSION['noti']) && $_SERVER['HTTP_REFERER'] == 'controller-login.php' ){

					echo '<div class="alert alert-danger alert-sm my-2">'.$_SESSION['noti'].'</div>';
					session_unset( $_SESSION['noti'] );

				} 
			?>

			<div class="my-2">
				<a href="?m=register" class="mx-4">Register New User</a><br>
				<a href="?m=forgot-password" class="mx-4">Forgot password</a>	
			</div>
		</div>
	</form>
</div>