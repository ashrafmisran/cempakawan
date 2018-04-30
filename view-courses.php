<main class="m-2">
	<h2>Courses</h2>
	<div>
		<a href="?m=add-course" class="btn btn-primary my-2">Add new course</a>
	</div>
	<table class="table table-hover table-striped w-100">
		<thead>
			<tr>
				<th></th>
				<th>Course ID</th>
				<th>Subject</th>
				<th>Level</th>
				<th>Tutor</th>
				<th>Actions</th>
			</tr>
		</thead>
		<tbody>
			<?php
				$run = $conn->query("SELECT *,(SELECT (SELECT name FROM tutors WHERE tutors.id = course_tutor.tutor_id) FROM course_tutor WHERE course_tutor.course_id = courses.id) AS tutor FROM courses");
				while ( $row = $run->fetch_assoc() ){
			?>
				<tr>
					<th>1</th>
					<td>CRS<?php echo 1000+$row['id'] ?></td>
					<td><?php echo $row['subject'] ?></td>
					<td><?php echo $row['level'] ?></td>
					<td><?php echo $row['tutor'] ?></td></td>
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