
<h4 class="text-center my-4"><?php echo($_SESSION['branch']) ?> <!-- (<a href="homepage"><span class="text-muted">Change</span></a>) --> > Choose menu:</h4>
<div class="container">
	
	<div id="branch-selector" class="row">
		
		<div class="col-3 text-right p-4"><h4>Management <li class="fas fa-building"></li> :</h4></div>
		<div class="col-3 text-center p-4"><a href="classes-list" class="btn btn-block btn-primary btn-lg">Classes</a></div>
		<div class="col-3 text-center p-4"><a href="financial-performance" class="btn btn-block btn-primary btn-lg">Financial</a></div>
		<div class="col-3 text-center p-4"></div>

		<div class="col-3 text-right p-4"><h4>Students <li class="fas fa-user"></li> :</h4></div>
		<div class="col-3 text-center p-4"><a href="student-registration" class="btn btn-block btn-primary btn-lg">Students Registration</a></div>
		<div class="col-3 text-center p-4"><a href="enrollment" class="btn btn-block btn-primary btn-lg">Enrollment</a></div>
		<div class="col-3 text-center p-4"><a href="add-payment-by-student" class="btn btn-block btn-primary btn-lg">Fees Payment</a></div>
		<div class="col-3 text-center p-4"></div>
		<div class="col-3 text-center p-4"><a href="attendances" class="btn btn-block btn-primary btn-lg">Students' Attendance</a></div>
		<div class="col-3 text-center p-4"></div>
		<div class="col-3 text-center p-4"></div>

		<div class="col-3 text-right p-4"><h4>Tutors <li class="fas fa-user"></li> :</h4></div>
		<div class="col-3 text-center p-4"><a href="tutors" class="btn btn-block btn-primary btn-lg">Tutors</a></div>
		<div class="col-3 text-center p-4"><a href="attendances-tutor" class="btn btn-block btn-primary btn-lg">Tutors' Attendance</a></div>
		<div class="col-3 text-center p-4"><a href="add-payment-to-tutor" class="btn btn-block btn-primary btn-lg">Tutors' Pay</a></div>

	</div>
	<div class="row">
		<div class="col text-center p-4"><a href="homepage" class="btn btn-danger btn-lg">Choose other branch</a></div>
	</div>
	
</div>
