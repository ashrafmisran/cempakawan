<main class="m-2">
	<h2><a href="branch-menu"><?php echo($_SESSION['branch']) ?></a> > <a href="classes-list">Classes</a> > Add new class</h2>
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
							<option value="1">6-year-old</option>
							<option value="2">Standard 1</option>
							<option value="3">Standard 2</option>
							<option value="4">Standard 3</option>
							<option value="5">Standard 4</option>
							<option value="6">Standard 5</option>
							<option value="7">Standard 6</option>
							<option value="8">Form 1</option>
							<option value="9">Form 2</option>
							<option value="10">Form 3</option>
							<option value="11">Form 4</option>
							<option value="12">Form 5</option>
							<option value="13">Form 6</option>
							<option value="14">Adults</option>
						</select>
					</div>
				</div>
				<div class="row mt-2">
					<div class="col-md-3">
						<label for="tutor">Group</label>
					</div>
					<div class="col-md-9">
						<input class="form-control" type="number" name="group" value="1" min="1" required>
					</div>
				</div>
				<div class="row mt-2">
					<div class="col-md-3">
						<label for="day">Day</label>
					</div>
					<div class="col-md-9">
						<select class="form-control" type="select" name="day" required>
							<option>Sunday</option>
							<option>Monday</option>
							<option>Tuesday</option>
							<option>Wednesday</option>
							<option>Thursday</option>
							<option>Friday</option>
							<option>Saturday</option>
						</select>
					</div>
				</div>
				<div class="row mt-2">
					<div class="col-md-3">
						<label for="tutor">Starts on</label>
					</div>
					<div class="col-md-9">
						<input class="form-control" type="time" name="start" required>
					</div>
				</div>
				<div class="row mt-2">
					<div class="col-md-3">
						<label for="tutor">Ends on</label>
					</div>
					<div class="col-md-9">
						<input class="form-control" type="time" name="end" required>
					</div>
				</div>
				<hr>
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
						<input id="tutor-rate" name="tutor-rate" class="form-control" required min="20" step="5" type="number" value="20">
					</div>
				</div>
			</div>
			<div class="card-footer">
				<button type="submit" class="btn btn-primary">Add class</button>
				<a href="classes-list" class="btn btn-danger">Cancel</a>
			</div>
		</div>
	</form>
</main>