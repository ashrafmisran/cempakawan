<main class="m-2">
	<h2><a href="?m=tutors">Tutors</a> > Add New Tutor</h2>
	<form class="card my-4" action="controller-add-tutor.php" method="post">
		<div class="card-body">

			<!-- Tutor -->
			<div class="row mt-2">
				<div class="col-md-3">
					<label for="ttr-fullname">Name</label>
				</div>
				<div class="col-md-9">
					<input id="ttr-fullname" type="text" name="ttr-fullname" class="form-control" autofocus required>
				</div>
			</div>
			<div class="row mt-2">
				<div class="col-md-3">
					<label for="ttr-mykad">MyKad/MyKid</label>
				</div>
				<div class="col-md-9">
					<input id="ttr-mykad" type="text" name="ttr-mykad" class="form-control" required>
				</div>
			</div>
			<div class="row mt-2">
				<div class="col-md-3">
					<label for="ttr-phone">Phone No.</label>
				</div>
				<div class="col-md-9">
					<input id="ttr-phone" type="text" name="ttr-phone" class="form-control" required>
				</div>
			</div>
			
		</div>
		<div class="card-footer">
			<button type="submit" class="btn btn-primary">Add tutor</button>
			<a href="?m=tutors" class="btn btn-danger">Cancel</a>
		</div>
	</form>
</main>