<?php 
	include_once 'function.php';
?>
<!DOCTYPE html>
<html>
<head>
	<title>Cempakawan</title>
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<meta name="author" content="Asrar Art Studio <asrar.artstudio@gmail.com>, Ashraf Misran <ashrafmisran@gmail.com> (60145102864)">

	<!-- Font Awesome -->
	<script defer src="vendor/fontawesome/js/all.js"></script>

	<!-- jQuery -->
	<script src="vendor/jquery/jquery.js"></script>

	<!-- popper.js -->
	<script src="vendor/popper/popper.js"></script>

	<!-- Bootstrap -->
	<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- DataTables -->
	<link rel="stylesheet" type="text/css" href="vendor/datatables/datatables.css">
	<script type="text/javascript" src="vendor/datatables/datatables.js"></script>

	<!-- select2 -->
	<link href="vendor/select2/select2.min.css" rel="stylesheet" />
	<script src="vendor/select2/select2.min.js"></script>
	
	<!-- moment.js -->
	<script type="text/javascript" src="vendor/moment/moment.js"></script>

	<!-- chart.js -->
	<script type="text/javascript" src="vendor/chartjs/chart.min.js"></script>

	<!-- daterangepicker -->
	<script type="text/javascript" src="vendor/daterangepicker/daterangepicker.min.js"></script>
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css" />

	<!-- fullcalendar -->
	<script type="text/javascript" src="vendor/fullcalendar/fullcalendar.min.js"></script>
	<link rel="stylesheet" type="text/css" href="vendor/fullcalendar/fullcalendar.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/fullcalendar/fullcalendar.print.css">

	<style type="text/css">
		body{
			zoom: 1;
		}
	</style>

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

<script type="text/javascript">
	$('.select2-multiple').select2({
		placeholder: 'You may choose more than 1',
		multiple: 'true'
	});
</script>
<script type="text/javascript">
	var startingDate = 26
	$('.monthpicker').daterangepicker({
		"singleDatePicker": false,
		ranges: {
	        'This Month': [moment().subtract(1,'month').startOf('month').add(startingDate-1,'day'),moment().startOf('month').add(startingDate-2,'day')],
	        'Last Month': [moment().subtract(2,'month').startOf('month').add(startingDate-1,'day'),moment().subtract(1,'month').startOf('month').add(startingDate-2,'day')]
	    }, 
	    "locale": {
	        "format": "YYYY-MM-DD"
	    },
	    "startDate": moment().subtract(1,'month').startOf('month').add(startingDate-1,'day'),
	    "endDate": moment().startOf('month').add(startingDate-2,'day')
	});
</script>
<script type="text/javascript">
	$('.rangepicker').daterangepicker({
		"singleDatePicker": false,
		ranges: {
			'This Quarter': [moment().startOf('quarter'), moment().endOf('quarter')],
			'Last Quarter': [moment().subtract(1, 'quarter').startOf('quarter'), moment().subtract(1, 'quarter').endOf('quarter')],
	        'This Year': [moment().startOf('year'), moment().endOf('year')],
	        'Last Year': [moment().subtract(1, 'year').startOf('year'), moment().subtract(1, 'year').endOf('year')],
	        'Year 2016': [moment().subtract(2, 'year').startOf('year'), moment().subtract(2, 'year').endOf('year')],
	        'All time': [moment("20161101","YYYYMMDD"), moment()]
	    }, 
	    "locale":{
	        "format": "MMMM YYYY"
	    },
	    "startDate": moment("20161101","YYYYMMDD"),
	    "endDate": moment()
	}, function(start, end, label) {
	  console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
	});
</script>
<script type="text/javascript">
	$('.datatable').DataTable();
</script>
<script type="text/javascript">
	$('.hastooltip').tooltip();
</script>
<script type="text/javascript">
	$('.select2').select2();
</script>




	
</body>
</html>
<?php
	$conn->close();
?>