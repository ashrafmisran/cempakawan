<main class="m-2">
	<h2><a href="branch-menu"><?php echo($_SESSION['branch']) ?></a> > Attendance</h2>
	<div class="row bg-secondary my-4">
		<div class="col">
			<form class="p-4 my-4" action="controller-record-attendance.php" method="post">
				<input class="form-control form-control-lg text-center" type="text" name="mykad" onsubmit="this.submit()" placeholder="Mykad" autofocus>
			</form>
		</div>
	</div>
	<!-- <table class="table datatable">
		<thead>
			<tr>
				<th>#</th>
				<th>Name</th>
				<th>Mykad</th>
				<th>In</th>
				<th>Out</th>
			</tr>
		</thead>
		<tbody>
			<?php
				$i = 0;
				$sql = "SELECT *,(SELECT name FROM students WHERE students.id = attendances.student) AS name,(SELECT mykad FROM students WHERE students.id = attendances.student) AS mykad FROM attendances";
				$run = $conn->query($sql);
				while ($row = $run->fetch_assoc()) {
					$i++
			?>
				<tr>
					<td><?php echo $i; ?></td>
					<td><?php echo $row['name']; ?></td>
					<td><?php echo $row['mykad']; ?></td>
					<td><?php echo $row['time_in']; ?></td>
					<td><?php echo $row['time_out']; ?></td>
				</tr>
			<?php } ?>
		</tbody>
	</table> -->
</main>