<?php include 'function.php'; ?>
<?php $_SESSION['branch'] = $_GET['branch'] ?>
<?php $_SESSION['branch_no'] = $_GET['branch-no'] ?>
<?php header('Location: branch-menu'); ?>