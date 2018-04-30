<div class="card m-4">
	<form action="controller-forgot-password.php" method="post">
		<div class="card-header">
			<h2>Forgot Password</h2>
		</div>
		<div class="card-body">
			<div class="form-group">
				<label>Email</label>
				<input name="email" class="form-control" type="email" required autofocus></input>
			</div>
		</div>
		<div class="card-footer text-center">
			<button type="submit" class="btn btn-primary">Reset password</button>
			<div class="my-2">
				<a href="?m=register" class="mx-4">I have not been registered before. I want to register as new user</a><br>
				<a href="?m=" class="mx-4">I have remember the password. I want to log In</a>	
			</div>
		</div>
	</form>
</div>