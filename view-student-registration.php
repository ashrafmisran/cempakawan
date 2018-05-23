<main class="m-2">
	<h2>Students Registration</h2>
	<div>
		<a href="?m=add-student" class="btn btn-primary my-2">Add new student</a>
	</div>
	<table class="table table-hover table-striped w-100 datatable">
		<thead>
			<tr>
				<th></th>
				<th>Student ID</th>
				<th>Name</th>
				<th>MyKad/MyKid</th>
				<th>School Name</th>
				<th>Level</th>
				<th>Residential</th>
				<th>Phone No.</th>
				<th>Remark</th>
				<th>Registered On</th>
				<th width="170">Actions</th>
			</tr>
		</thead>
		<tbody>
			<?php
				$run = $conn->query("SELECT * FROM students");
				$i = 0;
				while ( $row = $run->fetch_assoc() ){
					$i++;
			?>
				<tr>
					<th><?php echo $i ?></th>
					<td>STD<?php echo 1000+$row['id'] ?></td>
					<td><?php echo $row['name'] ?></td>
					<td><?php echo $row['mykad'] ?></td>
					<td><?php echo $row['school_name'] ?></td>
					<td>
						<?php 
							switch ($row['level']) {
								case '1':
									echo 'Std 1';
									break;
								case '2':
									echo 'Std 2';
									break;
								case '3':
									echo 'Std 3';
									break;
								case '4':
									echo 'Std 4';
									break;
								case '5':
									echo 'Std 5';
									break;
								case '6':
									echo 'Std 6';
									break;
								case '7':
									echo 'Form 1';
									break;
								case '8':
									echo 'Form 2';
									break;
								case '9':
									echo 'Form 3';
									break;
								case '10':
									echo 'Form 4';
									break;
								case '11':
									echo 'Form 5';
									break;
								case '12':
									echo 'Form 6L';
									break;
								case '13':
									echo 'Form 6U';
									break;
								case '14':
									echo 'Adult';
									break;								
							}
						?>
					</td>
					<td><?php echo $row['residential'] ?></td>
					<td><?php echo $row['phone_no'] ?></td>
					<td><?php echo $row['remark'] ?></td>
					<td><?php echo date('Y-m-d',strtotime($row['registered_on'])) ?></td>
					<td>
						<a href="?m=enroll-student&student=<?php echo $row['mykad'] ?>" class="btn btn-primary text-white hastooltip" title="Enroll student to class"><i class="fas fa-book"></i></a>
						<div class="btn-group">
							<button type="button" class="btn btn-primary hastooltip" data-toggle="modal" data-target="#student-detail" title="View"><i class="fas fa-eye"></i></button>
							<button class="btn btn-danger hastooltip" data-toggle="modal" data-id="<?php echo($row['id']) ?>" data-target="#modal-remove-student" title="Delete student registration"><i class="fas fa-trash-alt"></i></button>
						</div>
					</td>
				</tr>
			<?php } ?>
		</tbody>
		<tfoot></tfoot>
	</table>
</main>

<!-- Modal -->
<div class="modal fade" id="student-detail" tabindex="-1" role="dialog" aria-labelledby="#student-detail-title" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="student-detail-title">Student's Detail</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <ul id="student-detail-tab-button" class="nav nav-tabs">
		  <li class="nav-item">
		    <button class="nav-link active" href="#biodata">Biodata</button>
		  </li>
		  <li class="nav-item">
		    <button class="nav-link" href="#enrollment">Enrollment</button>
		  </li>
		  <li class="nav-item">
		    <button class="nav-link" href="#finance">Finance</button>
		  </li>
		</ul>
		<div id="student-detail-tab-content">
			<div id="biodata">A</div>
			<div id="enrollment">B</div>
			<div id="finance">C</div>
		</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>

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
				<p>Are you sure to remove this student?</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" data-dismiss="modal">Cancel</button>
				<a href="controller-remove-student&id=" class="btn btn-danger">Confirm delete</a>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->


<script type="text/javascript">
	$('#student-detail-tab-button .nav-link').click(function(){
		$(this).parent().siblings().children().removeClass('active')
		$(this).addClass('active').siblings().removeClass('d-none')
	})
</script>