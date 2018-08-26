<main class="m-2">
	<h2><a href="branch-menu"><?php echo($_SESSION['branch']) ?></a> > Enrollment</h2>
	<div>
		<a href="enroll-student" class="btn btn-primary my-2">Enroll student</a>
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
				$run = $conn->query("SELECT *,(SELECT name FROM students WHERE students.id = enrolls.student) as name,(SELECT subject FROM classes WHERE classes.id = enrolls.class) AS subject,(SELECT name FROM levels WHERE id = (SELECT level FROM classes WHERE classes.id = enrolls.class)) AS level_name FROM enrolls WHERE active = 1 AND enrolls.student IN (SELECT id FROM students WHERE branch = ".$_SESSION['branch_no'].")");
				while ( $row = $run->fetch_assoc() ){
					$i++;
			?>
				<tr>
					<th><?php echo($i) ?></th>
					<td>STD<?php echo 1000+$row['id'] ?></td>
					<td><?php echo $row['name'] ?></td>
					<td>CLS<?php echo 1000+$row['class'] ?></td>
					<td><?php echo $row['subject'] ?></td>
					<td><?php echo $row['level_name'] ?></td>
					<td><?php echo $row['registered_on'] ?></td>
					<td>
						<div class="btn-group">
							<button title="Remove from class" class="hastooltip btn btn-danger" data-toggle="modal" data-target="#modal-remove-student" data-subject="<?php echo $row['subject'] ?>" data-subject-id="<?php echo $row['class'] ?>" data-student-id="<?php echo $row['student'] ?>" data-name="<?php echo $row['name'] ?>"><i class="fas fa-trash-alt"></i></button>
						</div>
					</td>
				</tr>
			<?php } ?>
		</tbody>
		<tfoot></tfoot>
	</table>
</main>


<div class="modal fade" id="modal-remove-student">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">Remove student</h4>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
					<span class="sr-only">Close</span>
				</button>
			</div>
			<div class="modal-body">
				<p>Are you confirm to remove <span id="name"></span> from <span id="subject"></span> class?</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
				<a id="confirm-delete-btn" class="btn text-white btn-danger">Confirm delete</a>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<script type="text/javascript">
	$('#modal-remove-student').on('show.bs.modal',function(event){
		var btn = $(event.relatedTarget);
		var name = btn.data('name')
		var studentID = btn.data('student-id')
		var subject = btn.data('subject')
		var subjectID = btn.data('subject-id')
		$('#name').text(name)
		$('#confirm-delete-btn').attr('href','controller-remove-student-from-class.php?student='+studentID+'&class='+subjectID)

	})
</script>