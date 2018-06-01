<main class="m-2">
	<h2>Financial Performance</h2>
	<div class="container-fluid">
		<div class="row">
			<div class="col">
				<div class="card">
					<div class="card-block p-3">
						<h3>Monthly Fees Payment (<?php echo date("M").' '.date('Y') ?>)</h3>
						<input class="monthpicker form-control w-50"></input>
						<canvas id="chart-1" class="w-100"></canvas>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card">
					<div class="card-block p-3">
						<h3>Profit/Loss (From Nov 2016 - <?php echo date("M").' '.date('Y') ?>)</h3>
						<input class="rangepicker form-control w-50"></input>
						<canvas id="chart-2" class="w-100"></canvas>
					</div>
				</div>
			</div>
		</div>
	</div>
</main>

<script type="text/javascript">
	/*Monthly fees payment*/
	var monthlyFeesPayment = $('#chart-1');
	var mixedChart1 = new Chart(monthlyFeesPayment, {
	  type: 'bar',
	  data: {
	    datasets: [{
	          label: 'Total students',
	          data: [50, 50, 50, 50],
	          borderColor: 'blue',
	          backgroundColor: 'rgba(0,0,0,0)',
	          type: 'line'
	        },{
	          label: 'Fees unpaid numbers',
	          data: [40, 40, 40, 40],
	          borderColor: 'orange',
	          backgroundColor: 'rgba(0,0,0,0)',
	          type: 'line'
	        },{
	          label: 'Fees paid numbers',
	          data: [30, 30, 30, 20],
	          borderColor: 'green',
	          backgroundColor: 'rgba(0,0,0,0)',
	          type: 'line'
	        },{
	          label: 'Amount expected',
	          backgroundColor: 'red',
	          data: [10, 20, 30, 40]
	        },{
	          label: 'Amount paid',
	          backgroundColor: 'lightgreen',
	          data: [10, 20, 30, 40]
	        }],
	    labels: ['January', 'February', 'March', 'April'],
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

	/*Profit/loss of all time*/
	var profitOrLoss = $('#chart-2');
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
	    labels: ['January', 'February', 'March', 'April'],
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

</script>