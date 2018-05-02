<main class="m-2">
	<h2>Class Management</h2>
	<div>
		<a href="?m=add-student" class="btn btn-primary my-2">Enroll student</a>
	</div>
	<table class="table table-hover table-striped w-100">
		<thead>
			<tr>
				<th></th>
				<th>Student ID</th>
				<th>Name</th>
				<th>MyKad/MyKid</th>
				<th>Parent's Name</th>
				<th>Subjects</th>
				<th>Registered On</th>
				<th>Actions</th>
			</tr>
		</thead>
		<tbody>
			<?php
				$run = $conn->query("SELECT *,(SELECT name FROM parents WHERE parents.id = students.parent_id) AS parent_fullname FROM students");
				while ( $row = $run->fetch_assoc() ){
			?>
				<tr>
					<th>1</th>
					<td>STD<?php echo 1000+$row['id'] ?></td>
					<td><?php echo $row['name'] ?></td>
					<td><?php echo $row['mykad'] ?></td>
					<td><?php echo $row['parent_fullname'] ?></td>
					<td>Maths</td>
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