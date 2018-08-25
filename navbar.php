<nav class="navbar navbar-expand-lg navbar-light bg-primary">
	<a class="navbar-brand text-white" href="index.php">Cempakawan</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	<span class="navbar-toggler-icon"></span> Menu
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
	<ul class="navbar-nav mr-auto">
		<li class="nav-item active">
		<a class="nav-link" href=" index.php">Home <span class="sr-only">(current)</span></a>
		</li>
		<li class="nav-item dropdown">
		<a class="nav-link" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false"><i class="fas fa-plus"></i></a>
		<div class="dropdown-menu">
			<a class="dropdown-item" href="add-student">New student</a>
			<a class="dropdown-item" href="enroll-student">New enrollment</a>
			<div role="separator" class="dropdown-divider"></div>
			<a class="dropdown-item" href="add-tutor">New tutor</a>
			<a class="dropdown-item" href="add-class">New class</a>
		</div>
		</li>
		<li class="nav-item dropdown">
		<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Students Management</a>
		<div class="dropdown-menu">
			<a class="dropdown-item" href="student-registration">Registration</a>
			<div role="separator" class="dropdown-divider"></div>
			<a class="dropdown-item" href="enrollment">Enrollment</a>
		</div>
		</li>
		<li class="nav-item dropdown">
		<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Classes Management</a>
		<div class="dropdown-menu">
			<a class="dropdown-item" href="tutors">Tutors</a>
			<a class="dropdown-item" href="classes-list">Classes</a>
			<a class="dropdown-item" href="timetables">Timetables</a>
			<div role="separator" class="dropdown-divider"></div>
			<a class="dropdown-item" href="attendances">Attendances</a>
			<a class="dropdown-item" href="attendances-tutor">Tutor's Attendances</a>
		</div>
		</li>
		<li class="nav-item dropdown">
		<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Finance</a>
		<div class="dropdown-menu">
			<a class="dropdown-item" href="add-payment-by-student">Payment by Student</a>
			<a class="dropdown-item" href="add-payment-to-tutor">Payment to Tutor</a>
			<a class="dropdown-item" href="add-expense">Expense</a>
			<div role="separator" class="dropdown-divider"></div>
			<a class="dropdown-item" href="financial-performance">Financial Performance</a>
		</div>
		</li>
		<li class="nav-item dropdown">
		<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">System</a>
		<div class="dropdown-menu">
			<a class="dropdown-item" href="backup-restore">Backup/Restore Database</a>
		</div>
		</li>
		<li class="nav-item dropdown">
		<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">User</a>
		<div class="dropdown-menu">
			<!-- <a class="dropdown-item" href="user-profile">Profile</a> -->
			<a class="dropdown-item" href="change-password">Change Password</a>
			<a class="dropdown-item" href="locked-user">Lock</a>
			<div role="separator" class="dropdown-divider"></div>
			<a class="dropdown-item" href="controller-logout.php">Logout</a>
		</div>
		</li>
	</ul>
	<!-- <form class="form-inline my-2 my-lg-0">
		<select class="form-control form-control-lg mr-2 select2" placeholder="Search" aria-label="Search">
		<option selected disabled>Search anything here...</option>
		<optgroup label="Student">
			<option>1</option>
		</optgroup>
		<optgroup label="Tutor">
			<option>1</option>
		</optgroup>
		<optgroup label="Class">
			<option>1</option>
		</optgroup>
		</select>
		<button class="btn btn-sm btn-outline-light my-2 my-sm-0" type="submit">Search</button>
	</form> -->
	</div>
</nav>
