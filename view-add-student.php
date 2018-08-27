<main class="m-2">
	<h2><a href="branch-menu"><?php echo($_SESSION['branch']) ?></a> > <a href="student-registration">Students Registration</a> > Add New Student</h2>
	<form class="card my-4" action="controller-add-student.php" method="post">
		<div class="card-body">

			<!-- Student -->
			<h3>Student</h3>
			<div class="row mt-2">
				<div class="col-md-3">
					<label for="fullname">Name</label>
				</div>
				<div class="col-md-9">
					<input id="fullname" type="text" name="fullname" class="form-control" autofocus required>
				</div>
			</div>
			<div class="row mt-2">
				<div class="col-md-3">
					<label for="mykad">MyKad/MyKid</label>
				</div>
				<div class="col-md-9">
					<input id="mykad" type="text" name="mykad" class="form-control" required>
				</div>
			</div>
			<div class="row mt-2">
				<div class="col-md-3">
					<label for="residential">Residential</label>
				</div>
				<div class="col-md-9">
					<input id="residential" type="text" name="residential" class="form-control" required>
				</div>
			</div>
			<div class="row mt-2">
				<div class="col-md-3">
					<label for="school-name">School Name</label>
				</div>
				<div class="col-md-9">
					<input id="school-name" type="text" name="school-name" class="form-control" required>
				</div>
			</div>
			<div class="row mt-2">
				<div class="col-md-3">
					<label for="level">Level</label>
				</div>
				<div class="col-md-9">
					<select id="level" name="level" class="form-control select2" required>
						<option disabled selected>Choose...</option>
						<optgroup label="Primary">
							<option value="1">Std 1</option>
							<option value="2">Std 2</option>
							<option value="3">Std 3</option>
							<option value="4">Std 4</option>
							<option value="5">Std 5</option>
							<option value="6">Std 6</option>
						</optgroup>
						<optgroup label="Secondary">
							<option value="7">Form 1</option>
							<option value="8">Form 2</option>
							<option value="9">Form 3</option>
							<option value="10">Form 4</option>
							<option value="11">Form 5</option>
							<option value="12">Form 6 Lower</option>
							<option value="13">Form 6 Upper</option>
						</optgroup>
						<optgroup label="Other">
							<option value="14">Adult</option>
						</optgroup>
					</select>
				</div>
			</div>
			<div class="row mt-2">
				<div class="col-md-3">
					<label for="phone">Phone No.</label>
				</div>
				<div class="col-md-9">
					<input id="phone" type="text" name="phone" class="form-control" required>
				</div>
			</div>

		</div>
		<div class="card-footer">
			<button type="submit" class="btn btn-primary">Register student</button>
			<a href="student-registration" class="btn btn-danger">Cancel</a>
		</div>
	</form>
</main>