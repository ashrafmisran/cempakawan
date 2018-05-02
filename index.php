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
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>


	<!-- Font Awesome -->
	<script defer src="https://use.fontawesome.com/releases/v5.0.2/js/all.js"></script>


</head>
<body>

	<?php 

		if( !isset($_SESSION['user']['id']) ){

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