
	/*Monthly fees payment*/
	var monthlyFeesPayment = $('#chart-1');

	var listDateStart = moment().subtract(1,'month').startOf('month').add(24,'day');
	var listDateEnd = moment().startOf('month').add(23,'day');
	var listDate = [];
	var day = listDateStart;
	while (day <= listDateEnd) {
	    listDate.push(day.format('MMMM Do'));
	    day = day.clone().add(1, 'day');
	}
	var mixedChart1 = new Chart(monthlyFeesPayment, {
	  type: 'bar',
	  data: {
	    datasets: [{
	          label: 'Total students',
	          data: [50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50],
	          borderColor: 'blue',
	          backgroundColor: 'rgba(0,0,0,0)',
	          type: 'line'
	        },{
	          label: 'Fees unpaid numbers',
	          data: [40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,60],
	          borderColor: 'orange',
	          backgroundColor: 'rgba(0,0,0,0)',
	          type: 'line'
	        },{
	          label: 'Fees paid numbers',
	          data: [30,30,30,20,30,30,30,20,30,30,30,20,30,30,30,20,30,30,30,20,30,30,30,20,30,30,30,20,30,30,60],
	          borderColor: 'green',
	          backgroundColor: 'rgba(0,0,0,0)',
	          type: 'line'
	        },{
	          label: 'Amount expected',
	          backgroundColor: 'red',
	          data: [100,200,300,400,100,200,300,400,100,200,300,400,100,200,300,400,100,200,300,400,100,200,300,400,100,200,300,400,100,200,600],
	          yAxisID: 'right-axis'
	        },{
	          label: 'Amount paid',
	          backgroundColor: 'lightgreen',
	          data: [100,200,300,400,100,200,300,400,100,200,300,400,100,200,300,400,100,200,300,400,100,200,300,400,100,200,300,400,100,200,600],
	          yAxisID: 'right-axis'
	        }],
	    labels: listDate
	  },
	  options: {
	  	tooltips: {
	  		/*enabled: false,*/
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

	/*Profit/loss of all time*/
	var profitOrLoss = $('#chart-2');

	var listDateStart = moment('20180101',"YYYYMMDD");
	var listDateEnd = moment().startOf('month');
	var listDate = [];
	var day = listDateStart;
	while (day <= listDateEnd) {
	    listDate.push(day.format('MMMM YYYY'));
	    day = day.clone().add(1, 'month');
	}

	console.log(listDateStart)
	console.log(listDateEnd)
	
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