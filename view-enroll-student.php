<main class="m-2">
	<h2><a href="?m=enrollment">Enrollment</a> > Enroll Student</h2>
	<form class="card my-4" action="controller-add-student.php" method="post">
		<div class="card-body">

			<!-- Student -->
			<div class="row mt-2">
				<div class="col-md-3">
					<label for="std-mykad">MyKad/MyKid</label>
				</div>
				<div class="col-md-9">
					<input id="std-mykad" type="text" name="std-mykad" class="form-control" required autofocus>
				</div>
			</div>
			<div class="row mt-2">
				<div class="col-md-3">
					<label for="std-name">Name</label>
				</div>
				<div class="col-md-9">
					<input id="std-name" type="text" name="std-name" class="form-control" required readonly>
				</div>
			</div>
			<div class="row mt-2">
				<div class="col-md-3">
					<label for="class">Class</label>
				</div>
				<div class="col-md-9">
					<input id="class" type="text" name="class" class="form-control" required>
				</div>
			</div>
			<div class="row mt-2">
				<div class="col-md-3">
					<label for="subject">Subject</label>
				</div>
				<div class="col-md-9">
					<input id="subject" type="text" name="subject" class="form-control" required readonly>
				</div>
			</div>
			<div class="row mt-2">
				<div class="col-md-3">
					<label for="level">Level</label>
				</div>
				<div class="col-md-9">
					<input id="level" type="text" name="level" class="form-control" required readonly>
				</div>
			</div>


		</div>
		<div class="card-footer">
			<button type="submit" class="btn btn-primary">Register student</button>
			<a href="?m=student-registration" class="btn btn-danger">Cancel</a>
		</div>
	</form>
</main>