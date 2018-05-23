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
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<?php
				$i = 0;
				$run = $conn->query("SELECT *,(SELECT name FROM students WHERE students.id = enrolls.student) as name,(SELECT subject FROM classes WHERE classes.id = enrolls.class) AS subject,(SELECT level FROM classes WHERE classes.id = enrolls.class) AS level FROM enrolls");
				while ( $row = $run->fetch_assoc() ){
					$i++;
			?>
				<tr>
					<th><?php echo($i) ?></th>
					<td>STD<?php echo 1000+$row['id'] ?></td>
					<td><?php echo $row['name'] ?></td>
					<td>CLS<?php echo 1000+$row['class'] ?></td>
					<td><?php echo $row['subject'] ?></td>
					<td><?php echo $row['level'] ?></td>
					<td><?php echo $row['registered_on'] ?></td>
					<td>
						<div class="btn-group">
							<button title="Remove from class" class="hastooltip btn btn-danger" data-toggle="modal" data-target="remove-student"><i class="fas fa-trash-alt"></i></button>
						</div>
					</td>
				</tr>
			<?php } ?>
		</tbody>
		<tfoot></tfoot>
	</table>
</main>