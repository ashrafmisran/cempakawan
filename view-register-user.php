<div class="card m-4">
	<form action="controller-register-user.php" method="post">
		<div class="card-header">
			<h2>Register New User</h2>
		</div>
		<div class="card-body">
			<div class="form-group">
				<label for="fullname">Full Name</label>
				<input id="fullname" name="fullname" class="form-control" type="text" required autofocus></input>
			</div>
			<div class="form-group">
				<label for="email">Email</label>
				<input id="email" name="email" class="form-control" type="email" required></input>
			</div>
			<div class="form-group">
				<label for="password">Password</label>
				<input id="password" name="password" class="form-control" type="password" minlength="6" maxlength="12" required></input>
			</div>
			<div class="form-group">
				<label for="password-2">Re-type Password</label>
				<input id="password-2" class="form-control" type="password" minlength="6" maxlength="12" required></input>
			</div>
		</div>
		<div class="card-footer text-center">
			<button type="submit" class="btn btn-primary">Register</button>

			<?php
				if(isset($_SESSION['noti'])){

					echo '<div class="alert alert-danger alert-sm my-2">'.$_SESSION['noti'].'</div>';
					session_unset( $_SESSION['noti'] );

				} 
			?>

			<div class="my-2">
				<a href="index.php" class="mx-4">I have been registered. I want to log In</a><br>
				<a href="forgot-password" class="mx-4">Forgot password</a>	
			</div>
		</div>
	</form>
</div>