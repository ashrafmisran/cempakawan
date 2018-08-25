<?php

	if( isset($_SESSION['noti']) && $_SERVER['HTTP_REFERER'] == 'controller-register.php' ){
		echo '<div class="alert alert-success">'.$_SESSION['noti'].'</div>';
		session_unset( $_SESSION['noti'] );
	}

?>
<h1 class="display-1 text-center mt-4">Cempakawan Tuition Center</h1>

<div class="container">
	<div class="jumbotron mt-4">
		<form action="controller-login.php" method="post">
			<h2>Log In</h2>
			<div class="form-group">
				<label for="email">Email</label>
				<input id="email" name="email" class="form-control" type="email" required autofocus></input>
			</div>
			<div class="form-group">
				<label for="password">Password</label>
				<input id="password" name="password" class="form-control" type="password" minlength="6" maxlength="12" required></input>
			</div>
			<button type="submit" class="btn btn-primary">Log In</button>

				<?php
					if( isset($_SESSION['noti']) && $_SERVER['HTTP_REFERER'] == 'controller-login.php' ){

						echo '<div class="alert alert-danger alert-sm my-2">'.$_SESSION['noti'].'</div>';
						session_unset( $_SESSION['noti'] );

					} 
				?>

			<div class="my-2">
				<a href="register">Register New User</a><br>
				<a href="forgot-password">Forgot password</a>	
			</div>
		</form>
	</div>
</div>