<nav class="navbar navbar-expand-lg navbar-light bg-primary">
  <a class="navbar-brand text-white" href="index.php">Cempakawan</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span> Menu
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="?m=">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Students Management</a>
        <div class="dropdown-menu">
          <a class="dropdown-item" href="?m=student-registration">Registration</a>
          <div role="separator" class="dropdown-divider"></div>
          <a class="dropdown-item" href="?m=enrollment">Enrollment</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Classes Management</a>
        <div class="dropdown-menu">
          <a class="dropdown-item" href="?m=tutors">Tutors</a>
          <a class="dropdown-item" href="?m=classes">Classes</a>
          <a class="dropdown-item" href="?m=timetables">Timetables</a>
          <div role="separator" class="dropdown-divider"></div>
          <a class="dropdown-item" href="?m=attendances">Attendances</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Finance</a>
        <div class="dropdown-menu">
          <a class="dropdown-item" href="?m=receivables">Invoices Receivable</a>
          <a class="dropdown-item" href="?m=payable">Invoices Payable</a>
          <a class="dropdown-item" href="?m=receipts">Receipts</a>
          <a class="dropdown-item" href="?m=payments">Payments</a>
          <a class="dropdown-item" href="?m=financial">Financial Statement</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">System</a>
        <div class="dropdown-menu">
          <a class="dropdown-item" href="?m=backup-restore">Backup/Restore Database</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">User</a>
        <div class="dropdown-menu">
          <!-- <a class="dropdown-item" href="?m=user-profile">Profile</a> -->
          <a class="dropdown-item" href="?m=change-password">Change Password</a>
          <a class="dropdown-item" href="?m=locked-user">Lock</a>
          <div role="separator" class="dropdown-divider"></div>
          <a class="dropdown-item" href="controller-logout.php">Logout</a>
        </div>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>