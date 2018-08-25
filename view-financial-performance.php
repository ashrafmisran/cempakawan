<main class="m-2">
	<h2>Financial Performance</h2>

	<div class="container-fluid">
		<div class="row mb-4">

			<div class="col-md-3">
				<h3>Cash at Hand: RM<?php 
					$sql = "SELECT (sum(debit)-sum(credit)) AS balance FROM transactions WHERE account = 1";
					$run = $conn->query($sql);
					$row = $run->fetch_assoc();
					echo $row['balance'];
				?></h3>
			</div>

			<div class="col-md-3">
				<h3>Net asset: RM<?php 
					$sql = "SELECT (sum(debit)-sum(credit)) AS balance FROM transactions WHERE account = 1";
					$run = $conn->query($sql);
					$row = $run->fetch_assoc();
					echo $row['balance'];
				?></h3>
			</div>

			<div class="col-md-3">
				<h3>Current liability: RM<?php 
					$sql = "SELECT (sum(credit)-sum(debit)) AS balance FROM transactions WHERE (SELECT category FROM accounts WHERE accounts.id = transactions.account) = 'Liability'";
					$run = $conn->query($sql);
					$row = $run->fetch_assoc();
					echo $row['balance'];
				?></h3>
			</div>

			<div class="col-md-3">
				<h3>Current students: <?php 
					$sql = "SELECT count(*) as balance FROM students WHERE quit_on = '0000-00-00 00:00:00'";
					$run = $conn->query($sql);
					$row = $run->fetch_assoc();
					echo $row['balance'];
				?> pax</h3>
			</div>

		</div>
	</div>


	<div class="container-fluid">	
		<div class="rows">
			<div class="container">
				<input id="month-selector" class="form-control monthpicker">
				<canvas id="fees-chart"></canvas>
			</div>
			<div class="col">
				<canvas id="pnl"></canvas>
			</div>
		</div>
	</div>

</main>

<script type="text/javascript">
	
	/*Monthly fees payment*/

	$('#month-selector').on('change',function(){
		var monthlyFeesPayment = $('#fees-chart')
				
		var start_date = $(this).val().substring(0,10)
		var end_date = $(this).val().substring(13,23)
		
		$.ajax({
			url: "http://localhost/cempakawan/data-fees-total-students.php?start="+start_date+"&end="+end_date,
			method: "get",
			success: function(data){
				
				var dates = []
				var totalstudents = []
				var paidstudents = []
				var unpaidstudents = []
				var amountexpected = []
				var paidamount = []

				for (var i = 0; i < data.length; i++) {
					dates.push(data[i].date);
					totalstudents.push(data[i].total_students);
					paidstudents.push(data[i].paid_students);
					unpaidstudents.push(data[i].total_unpaid_students);
					amountexpected.push(data[i].amount_expected);
					paidamount.push(data[i].amount_paid);
				}

				var mixedChart1 = new Chart(monthlyFeesPayment, {
				  type: 'bar',
				  data: {
				    labels: dates,
				    datasets: [{
				          label: 'Total pstudents',
				          data: totalstudents,
				          borderColor: 'blue',
				          backgroundColor: 'rgba(0,0,0,0)',
				          type: 'line'
				        },{
				          label: 'Fees unpaid numbers',
				          data: unpaidstudents,
				          borderColor: 'orange',
				          backgroundColor: 'rgba(0,0,0,0)',
				          type: 'line'
				        },{
				          label: 'Fees paid numbers',
				          data: paidstudents,
				          borderColor: 'green',
				          backgroundColor: 'rgba(0,0,0,0)',
				          type: 'line'
				        },{
				          label: 'Amount expected',
				          backgroundColor: 'red',
				          data: amountexpected,
				          yAxisID: 'right-axis'
				        },{
				          label: 'Amount paid',
				          backgroundColor: 'lightgreen',
				          data: paidamount,
				          yAxisID: 'right-axis'
				        }]
				  },
				  options: {
				  	tooltips: {
				  		enabled: true,
				  		mode: 'index',
				  		intersect: false,
				  		position: 'nearest'
				  	},
				  	scales: {
				  		yAxes: [{
				  			id: 'left-axis',
				  			type: 'linear',
				  			position: 'left',
				  			ticks: {
				  				min: 0,
				  				stepSize: 10
				  			}
				  		},{
				  			id: 'right-axis',
				  			type: 'linear',
				  			position: 'right',
				  			ticks: {
				  				min: 0,
				  				stepSize: 100
				  			}
				  		}]
				  	}
				  }
				});
							
			},
			error: function(data){
				console.log(data);
			}
		});
	});
	

	

	/*Profit/loss of all time*/
	var profitOrLoss = $('#pnl');
/*
	var listDateStart = moment('20180101',"YYYYMMDD");
	var listDateEnd = moment().startOf('month');
	var listDate = [];
	var day = listDateStart;
	while (day <= listDateEnd) {
	    listDate.push(day.format('MMMM YYYY'));
	    day = day.clone().add(1, 'month');
	}

	console.log(listDateStart)
	console.log(listDateEnd)*/
	
	var mixedChart2 = new Chart(profitOrLoss, {
	  type: 'bar',
	  data: {
	    datasets: [{
	          label: 'Total students',
	          data: [50, 50, 50, 50],
	          borderColor: 'blue',
	          backgroundColor: 'rgba(0,0,0,0)',
	          type: 'line'
	        },{
	          label: 'Collection',
	          backgroundColor: 'orange',
	          data: [10, 20, 30, 40]
	        },{
	          label: 'Profit/Loss',
	          backgroundColor: ['darkgreen','darkgreen','darkgreen','darkred'],
	          data: [10, 20, 30, -40]
	        }],
	    labels: listDate
	  },
	  options: {
	  	scales: {
	  		yAxes: [{
	  			ticks: {
	  				beginAtZero:true
	  			}
	  		}]
	  	}
	  }
	});
/*
	var ctx = document.getElementById("myChart");
	var myChart = new Chart(ctx, {
	    type: 'bar',
	    data: {
	        labels: ["Red", "Blue", "Yellow", "Green", "Purple", "Orange"],
	        datasets: [{
	            label: '# of Votes',
	            data: [12, 19, 3, 5, 2, 3],
	            backgroundColor: [
	                'rgba(255, 99, 132, 0.2)',
	                'rgba(54, 162, 235, 0.2)',
	                'rgba(255, 206, 86, 0.2)',
	                'rgba(75, 192, 192, 0.2)',
	                'rgba(153, 102, 255, 0.2)',
	                'rgba(255, 159, 64, 0.2)'
	            ],
	            borderColor: [
	                'rgba(255,99,132,1)',
	                'rgba(54, 162, 235, 1)',
	                'rgba(255, 206, 86, 1)',
	                'rgba(75, 192, 192, 1)',
	                'rgba(153, 102, 255, 1)',
	                'rgba(255, 159, 64, 1)'
	            ],
	            borderWidth: 1
	        }]
	    },
	    options: {
	        scales: {
	            yAxes: [{
	                ticks: {
	                    beginAtZero:true
	                }
	            }]
	        }
	    }
	});*/

</script> 