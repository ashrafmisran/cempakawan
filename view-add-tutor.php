<main class="m-2">
	<h2><a href="tutors">Tutors</a> > Add New Tutor</h2>
	<form class="card my-4" action="controller-add-tutor.php" method="post">
		<div class="card-body">

			<!-- Tutor -->
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
					<label for="phone">Phone No.</label>
				</div>
				<div class="col-md-9">
					<input id="phone" type="text" name="phone" class="form-control" required>
				</div>
			</div>
			
		</div>
		<div class="card-footer">
			<button type="submit" class="btn btn-primary">Add tutor</button>
			<a href="tutors" class="btn btn-danger">Cancel</a>
		</div>
	</form>
</main>