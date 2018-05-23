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
				<th>Subjects</th>
				<th>Registered On</th>
				<th>Actions</th>
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
					<td><?php echo $row['mykad'] ?></td>
					<td>Maths</td>
					<td><?php echo $row['registered_on'] ?></td>
					<td>
						<div class="btn-group">
							<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#student-detail">View/Edit</button>
							<button class="btn btn-danger" data-toggle="modal" data-target="remove-student">Remove</button>
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


<script type="text/javascript">
	$('#student-detail-tab-button .nav-link').click(function(){
		$(this).parent().siblings().children().removeClass('active')
		$(this).addClass('active').siblings().removeClass('d-none')
	})
</script>