<?php 
	include_once 'function.php';
?>
<!DOCTYPE html>
<html>
<head>
	<title>Cempakawan</title>
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<meta name="author" content="Asrar Art Studio <asrar.artstudio@gmail.com>, Ashraf Misran <ashrafmisran@gmail.com> (60145102864)">

	<!-- Bootstrap -->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.css">
	<script type="text/javascript" src="vendor/bootstrap/js/bootstrap.bundle.js"></script>

	<!-- Font Awesome -->
	<script defer src="https://use.fontawesome.com/releases/v5.0.2/js/all.js"></script>


</head>
<body>

	<?php 

		if( !isset($_SESSION['user']) ){

			if( !isset($_GET['m']) ){

				include 'view-login.php';

			}else{

				switch ($_GET['m']) {

					case 'register':
						include 'view-register-user.php';
						break;

					case 'forgot-password':
						include 'view-forgot-password.php';
						break;

					default:
						include 'view-login.php';
				}

			}

		}else{

			if( !isset( $_SESSION['user']['locked'] ) OR $_SESSION['user']['locked'] == FALSE ){

				include('navbar.php');
				
				if ( !isset($_GET['m']) ) {

					include 'view-homepage.php';

				}else{

					if( $_GET['m'] == '' ){

						include 'view-homepage.php';

					}else{

						include 'view-'.$_GET['m'].'.php';

					}

				}
				
			}else{

				include 'view-locked-user.php';

			}

		}

	?>


	
</body>
</html>
<?php
	$conn->close();
?>