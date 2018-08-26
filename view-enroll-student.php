<main class="m-2">
	<h2><a href="branch-menu"><?php echo($_SESSION['branch']) ?></a> > <a href="enrollment">Enrollment</a> > Enroll Student</h2>
	<form class="card my-4" action="controller-enroll-student.php" method="post">
		<div class="card-body">

			<!-- Student -->
			
			<div class="row mt-2">
				<div class="col-md-3">
					<label for="student">Student</label>
				</div>
				<div class="col-md-9">
					<select id="student" name="student[]" class="form-control select2" required readonly multiple>
						<?php 
							$sql = "SELECT * FROM students ORDER BY name";
							$run = $conn->query($sql);
							while ($row = $run->fetch_assoc()) { ?>
								<option value="<?php echo $row['id'] ?>"><?php echo $row['name'] ?> &lt;<?php echo $row['mykad']; ?>&gt;</option>
						<?php } ?>
					</select>
				</div>
			</div>
			
			<div class="row mt-2">
				<div class="col-md-3">
					<label for="class">Class</label>
				</div>
				<div class="col-md-9">
					<select id="class" name="class[]" class="form-control select2" multiple>
						<optgroup label="Group">
							<?php 
								$sql = "SELECT *,(SELECT name FROM levels WHERE id = classes.level) AS level_name FROM classes WHERE is_group = 1 ORDER BY subject";
								$run = $conn->query($sql);
								while ($row = $run->fetch_assoc()) { ?>
									<option value="<?php echo $row['id'] ?>"><?php echo $row['subject'] ?> (<?php echo $row['level_name']; ?>) - Kumpulan <?php echo $row['group_no'] ?></option>
							<?php } ?>
						</optgroup>	
						<optgroup label="Private">
							<?php 
								$sql = "SELECT *,(SELECT name FROM levels WHERE id = classes.level) AS level_name FROM classes WHERE is_group = 0 ORDER BY subject";
								$run = $conn->query($sql);
								while ($row = $run->fetch_assoc()) { ?>
									<option value="<?php echo $row['id'] ?>"><?php echo $row['subject'] ?> (<?php echo $row['level_name']; ?>) - Kumpulan <?php echo $row['group_no'] ?></option>
							<?php } ?>
						</optgroup>	
					</select>
				</div>
			</div>

		</div>
		<div class="card-footer">
			<button type="submit" class="btn btn-primary">Register student</button>
			<a href="enrollment" class="btn btn-danger">Cancel</a>
		</div>
	</form>
</main>