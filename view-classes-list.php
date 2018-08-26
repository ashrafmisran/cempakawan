<main class="m-2">
	<h2><a href="branch-menu"><?php echo($_SESSION['branch']) ?></a> > Classes</h2>
	<div>
		<a href="add-class" class="btn btn-primary my-2">Add new class</a>
	</div>
	<table class="table table-hover table-striped w-100 datatable">
		<thead>
			<tr>
				<th></th>
				<th>Class ID</th>
				<th>Type</th>
				<th>Subject</th>
				<th>Level</th>
				<th>Tutor</th>
				<th>Size</th>
				<th>Time</th>
				<th width="170">Actions</th>
			</tr>
		</thead>
		<tbody>
			<?php
				$i   = 0;
				$run = $conn->query("SELECT *,(SELECT count(*) FROM enrolls WHERE enrolls.class = classes.id) AS no_student,(SELECT name FROM tutors WHERE tutors.id = classes.tutor) AS tutor_name,(SELECT name FROM levels WHERE id = classes.level) AS level_name FROM classes WHERE branch = ".$_SESSION['branch_no']." ORDER BY is_group,level");
				while ( $row = $run->fetch_assoc() ){
					$i++;
			?>
				<tr>
					<th><?php echo $i; ?></th>
					<td>CLS<?php echo 1000+$row['id'] ?></td>
					<td><?php if($row['is_group']){echo 'Group';}else{echo "Private";} ?></td>
					<td><?php echo $row['subject'] ?></td>
					<td><?php echo $row['level_name'] ?></td>
					<td><?php echo $row['tutor_name'] ?></td>
					<td><?php echo $row['no_student'] ?></td>
					<td>Thursday, 8:00pm - 10:00pm [p]</td>
					<td width="150px">
						<a title="Enroll student" href="?m=enroll-student" class="btn hastooltip btn-primary text-white"><i class="fas fa-book"></i></a>
						<div class="btn-group">
							<button title="View" class="btn hastooltip btn-primary" data-toggle="modal" data-target="#student-detail"><i class="fas fa-eye"></i></button>
							<button title="Remove class" class="btn hastooltip btn-danger" data-toggle="modal" data-target="#modal-remove-class"><i class="fas fa-trash-alt"></i></button>
						</div>
					</td>
				</tr>
			<?php } ?>
		</tbody>
		<tfoot></tfoot>
	</table>
</main>


		<div class="modal fade" id="modal-remove-class">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title">Delete class</h4>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
							<span class="sr-only">Close</span>
						</button>
					</div>
					<div class="modal-body">
						<p>One fine body&hellip;</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary">Save changes</button>
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->