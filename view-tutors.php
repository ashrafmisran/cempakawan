<main class="m-2">
	<h2>Tutors</h2>
	<div>
		<a href="?m=add-tutor" class="btn btn-primary my-2">Add new tutor</a>
	</div>
	<table class="table table-hover table-striped w-100">
		<thead>
			<tr>
				<th></th>
				<th>Tutor ID</th>
				<th>Name</th>
				<th>MyKad</th>
				<th>Phone No</th>
				<th>Actions</th>
			</tr>
		</thead>
		<tbody>
			<?php
				$run = $conn->query("SELECT * FROM tutors");
				while ( $row = $run->fetch_assoc() ){
			?>
				<tr>
					<th>1</th>
					<td>TTR<?php echo 1000+$row['id'] ?></td>
					<td><?php echo $row['name'] ?></td>
					<td><?php echo $row['mykad'] ?></td>
					<td><?php echo $row['phone'] ?></td>
					<td>
						<a href="?m=add-class&tutor=<?php echo $row['id'] ?>" title="Add class" class="hastooltip btn btn-primary text-white"><i class="fas fa-book"></i></a>
						<div class="btn-group">
							<button title="View" class="hastooltip btn btn-primary" data-toggle="modal" data-target="#student-detail"><i class="fas fa-eye"></i></button>
							<button title="Remove tutor" class="hastooltip btn btn-danger" data-toggle="modal" data-target="remove-student"><i class="fas fa-trash-alt"></i></button>
						</div>
					</td>
				</tr>
			<?php } ?>
		</tbody>
		<tfoot></tfoot>
	</table>
</main>
