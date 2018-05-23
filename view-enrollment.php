<main class="m-2">
	<h2>Enrollment</h2>
	<div>
		<a href="?m=enroll-student" class="btn btn-primary my-2">Enroll student</a>
	</div>
	<table class="table table-hover table-striped w-100 datatable">
		<thead>
			<tr>
				<th></th>
				<th>Student ID</th>
				<th>Name</th>
				<th>Class ID</th>
				<th>Subject</th>
				<th>Level</th>
				<th>Enrolled On</th>
				<th>Actions</th><p></p>
			</tr>
		</thead>
		<tbody>
			<?php
				$run = $conn->query("SELECT * FROM students");
				while ( $row = $run->fetch_assoc() ){
			?>
				<tr>
					<th>1</th>
					<td>STD<?php echo 1000+$row['id'] ?></td>
					<td><?php echo $row['name'] ?></td>
					<td>CLS1001</td>
					<td>Maths</td>
					<td>Standard 2</td>
					<td><?php echo $row['registered_on'] ?></td>
					<td>
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