<main class="m-2">
	<h2>Classes</h2>
	<div>
		<a href="?m=add-class" class="btn btn-primary my-2">Add new class</a>
	</div>
	<table class="table table-hover table-striped w-100 datatable">
		<thead>
			<tr>
				<th></th>
				<th>Class ID</th>
				<th>Subject</th>
				<th>Level</th>
				<th>No. of Student</th>
				<th>Tutor</th>
				<th>Time</th>
				<th>Actions</th>
			</tr>
		</thead>
		<tbody>
			<?php
				$run = $conn->query("SELECT * FROM classes");
				while ( $row = $run->fetch_assoc() ){
			?>
				<tr>
					<th>1</th>
					<td>CLS<?php echo 1000+$row['id'] ?></td>
					<td><?php echo $row['subject'] ?></td>
					<td><?php echo $row['level'] ?></td>
					<td>10 [p]</td>
					<td>Amirul Zakwan [p]</td>
					<td>Thursday, 8:00pm - 10:00pm [p]</td>
					<td>
						<a href="?m=enroll-student" class="btn btn-primary text-white">Enroll student</a>
						<div class="btn-group">
							<button class="btn btn-primary" data-toggle="modal" data-target="#student-detail">View/Edit</button>
							<button class="btn btn-danger" data-toggle="modal" data-target="remove-student">Remove</button>
						</div>
					</td>
				</tr>
			<?php } ?>
		</tbody>
		<tfoot></tfoot>
	</table>
</main>
