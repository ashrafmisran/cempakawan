<main class="m-2">
	<h2><a href="?m=enrollment">Enrollment</a> > Enroll Student</h2>
	<form class="card my-4" action="controller-add-student.php" method="post">
		<div class="card-body">

			<!-- Student -->
			<h3>Student</h3>
			<div class="row mt-2">
				<div class="col-md-3">
					<label for="std-fullname">Name</label>
				</div>
				<div class="col-md-9">
					<input id="std-fullname" type="text" name="std-fullname" class="form-control" autofocus required>
				</div>
			</div>
			<div class="row mt-2">
				<div class="col-md-3">
					<label for="std-mykad">MyKad/MyKid</label>
				</div>
				<div class="col-md-9">
					<input id="std-mykad" type="text" name="std-mykad" class="form-control" required>
				</div>
			</div>
			<div class="row mt-2">
				<div class="col-md-3">
					<label for="std-bod">B.O.D</label>
				</div>
				<div class="col-md-9">
					<input id="std-bod" type="text" name="std-bod" class="form-control" required>
				</div>
			</div>
			<div class="row mt-2">
				<div class="col-md-3">
					<label for="std-sex">Sex</label>
				</div>
				<div class="col-md-9">
					<select id="std-sex" name="std-sex" class="form-control" required>
						<option disabled selected>Please select...</option>
						<option>Male</option>
						<option>Female</option>
					</select>
				</div>
			</div>
			<div class="row mt-2">
				<div class="col-md-3">
					<label for="std-school-name">School Name</label>
				</div>
				<div class="col-md-9">
					<input id="std-school-name" type="text" name="std-school-name" class="form-control" required>
				</div>
			</div>
			
			<hr>

			<!-- Parent -->
			<h3>Parent</h3>
			<div class="row mt-2">
				<div class="col-md-3">
					<label for="parent-data">New/Existing</label>
				</div>
				<div class="col-md-9">
					<select id="parent-data" class="form-control" required>
						<option disabled selected>Please select...</option>
						<option>New</option>
						<option>Existing</option>
					</select>
				</div>
			</div>
			<div class="row mt-2">
				<div class="col-md-3">
					<label for="parent-fullname">Parent Name</label>
				</div>
				<div class="col-md-9">
					<input id="parent-fullname" type="text" name="parent-fullname" class="form-control" required>
				</div>
			</div>
			<div class="row mt-2">
				<div class="col-md-3">
					<label for="parent-mykad">MyKad</label>
				</div>
				<div class="col-md-9">
					<input id="parent-mykad" type="text" name="parent-mykad" class="form-control" required>
				</div>
			</div>
			<div class="row mt-2">
				<div class="col-md-3">
					<label for="parent-residential">Residential/Village</label>
				</div>
				<div class="col-md-9">
					<input id="parent-residential" type="text" name="parent-residential" class="form-control" required placeholder="E.g.: Desa Cempaka">
				</div>
			</div>
			<div class="row mt-2">
				<div class="col-md-3">
					<label for="parent-mobile">Mobile Phone No.</label>
				</div>
				<div class="col-md-9">
					<input id="parent-mobile" type="number" name="parent-mobile" class="form-control" required placeholder="Start with 6">
				</div>
			</div>
			<div class="row mt-2">
				<div class="col-md-3">
					<label for="parent-email">Email</label>
				</div>
				<div class="col-md-9">
					<input id="parent-email" type="email" name="parent-email" class="form-control">
				</div>
			</div>

		</div>
		<div class="card-footer">
			<button type="submit" class="btn btn-primary">Register student</button>
			<a href="?m=student-registration" class="btn btn-danger">Cancel</a>
		</div>
	</form>
</main>