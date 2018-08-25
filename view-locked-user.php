<?php $_SESSION['user']['locked'] = TRUE; ?>
<div class="card m-4">
	<form action="controller-unlock.php" method="post">
		<div class="card-header">
			<h2>Locked</h2>
		</div>
		<div class="card-body">
			<div class="form-group">
				<label for="password">Password</label>
				<input id="password" name="password" class="form-control" type="password" minlength="6" maxlength="12" required autofocus></input>
			</div>
		</div>
		<div class="card-footer text-center">
			<button type="submit" class="btn btn-primary">Log In</button>

			<?php
				if( isset($_SESSION['noti']) ){

					echo $_SESSION['noti'];
					session_unset( $_SESSION['noti'] );

				} 
			?>

			<div class="my-2">
				<a href="controller-logout.php" class="mx-4">Use other account</a><br>
				<a href="forgot-password" class="mx-4">Forgot password</a>	
			</div>
		</div>
	</form>
</div>