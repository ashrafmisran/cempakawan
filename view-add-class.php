<main class="m-2">
	<h2><a href="?m=classes">Classes</a> > Add new class</h2>
	<form action="controller-add-class.php" method="post">
		<div class="card my-4">
			<div class="card-body">
				<div class="row mt-2">
					<div class="col-md-3">
						<label for="type">Type</label>
					</div>
					<div class="col-md-9">
						<select id="type" type="radio" name="type" class="form-control" required autofocus>
							<option value="1">Group</option>
							<option value="0">Private</option>
						</select>
					</div>
				</div>
				<div class="row mt-2">
					<div class="col-md-3">
						<label for="subject">Subject</label>
					</div>
					<div class="col-md-9">
						<input id="subject" type="text" name="subject" class="form-control" required autofocus>
					</div>
				</div>
				<div class="row mt-2">
					<div class="col-md-3">
						<label for="level">Level</label>
					</div>
					<div class="col-md-9">
						<select id="level" name="level" class="form-control" required>
							<option>Standard 1</option>
							<option>Standard 2</option>
							<option>Standard 3</option>
							<option>Standard 4</option>
							<option>Standard 5</option>
							<option>Standard 6</option>
							<option>Form 1</option>
							<option>Form 2</option>
							<option>Form 3</option>
							<option>Form 4</option>
							<option>Form 5</option>
							<option>Form 6 Lower</option>
							<option>Form 6 Upper</option>
							<option>Adults</option>
						</select>
					</div>
				</div>
				<div class="row mt-2">
					<div class="col-md-3">
						<label for="tutor">Tutor</label>
					</div>
					<div class="col-md-9">
						<select id="tutor" name="tutor" class="form-control select2" required>
							<option selected disabled>Select...</option>
							<?php 
								$sql = "SELECT * FROM tutors";
								$run = $conn->query($sql);
								while ($row = $run->fetch_assoc()) { ?>
									<option value="<?php echo $row['id'] ?>"><?php echo $row['name'] ?> &lt;<?php echo $row['mykad']; ?>&gt;</option>
							<?php } ?>	
						</select>
					</div>
				</div>
				<div class="row mt-2">
					<div class="col-md-3">
						<label for="tutor-rate">Tutor's Rate</label>
					</div>
					<div class="col-md-9">
						<input id="tutor-rate" name="tutor-rate" class="form-control" required min="20" step="5" type="number">
					</div>
				</div>
			</div>
			<div class="card-footer">
				<button type="submit" class="btn btn-primary">Add class</button>
				<a href="?m=classes" class="btn btn-danger">Cancel</a>
			</div>
		</div>
	</form>
</main>