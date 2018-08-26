<h2 class="m-2"><a href="branch-menu"><?php echo($_SESSION['branch']) ?></a> > Tutors' Attendance</h2>
<form class="container mt-4">
	<div class="row">
		<div class="col-md-3">
			<label for="name">Tutor's Name</label>
		</div>
		<div class="col-md-9">
			<select id="name" name="name" class="select2 form-control">
				<option selected disabled>Select one...</option>
				<?php 
					$sql = "SELECT * FROM tutors";
					$run = $conn->query($sql);
					while ($row = $run->fetch_assoc()) { ?>
						<option value="<?php echo($row['id']) ?>"><?php echo($row['name']) ?></option>
				<?php } ?>
			</select>
		</div>
	</div>
	<div class="row">
		<div class="col-md-3">
			<label for="class">Class</label>
		</div>
		<div class="col-md-9">
			<select id="class" name="class" class="select2 form-control"></select>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6 text-center">
			<button id="btn-clock-in" class="mt-4 btn btn-lg btn-primary" type="button">Clock in</button>
			<p class="text-muted">Clock in on : <br><input id="clock-in-time" readonly style="border: 0px; text-align: center;"></p>
		</div>
		<div class="col-md-6 text-center">
			<button id="btn-clock-out" class="mt-4 btn btn-lg btn-danger" type="button">Clock out</button>
			<p class="text-muted">Clock out on : <br><input id="clock-out-time" readonly style="border: 0px; text-align: center;"></p>
		</div>
	</div>
	<div class="text-center">
		<table id="pay-table" width="30%" class="table d-none">
			<tr>
				<td>Time</td>
				<td id="result-time">0 hours</td>
			</tr>
			<tr>
				<td>Rate</td>
				<td>RM<span id="result-rate">24</span>/hour</td>
			</tr>
			<tr>
				<td style="font-size: 20pt"><b>Pay</b></td>
				<td style="font-size: 20pt"><b>RM<span id="result-pay">72</span></b></td>
			</tr>
		</table>
	</div>
</form>




<script type="text/javascript">
	$('#name').on('change',function(){
		var tutorID = $(this).val()
		$('#class').children('option').remove()

		$.ajax({
			url: 'data-classes-list.php?id='+tutorID,
			method: 'get',
			success: function(data){
				for (var i = 0; i < data.length; i++) {
					$('#class').append('<option value="'+data[i]['id']+'" data-pay="'+data[i]['tutor_rate']+'">'+data[i]['subject']+'</option>')
				}
			}
		})
	})
</script>

<script type="text/javascript">
	$('#class').on('change', function(){
		var rate = $('#class option:selected').attr('data-pay')
		$('#result-rate').text(rate)
	})
</script>

<script type="text/javascript">
	$('#btn-clock-in,#btn-clock-out').on('click', function(){
		var time = new Date()

		$(this).parent().find('#clock-in-time,#clock-out-time').val(time.getHours() + ":" + time.getMinutes() + ":" + time.getSeconds())

		if ( $('#clock-in-time').val() != '' && $('#clock-out-time').val() != '' ) {
			var clockInTime = $('#clock-in-time').val().split(':');
			clockInTime = (+clockInTime[0]) * 60 * 60 + (+clockInTime[1]) * 60 + (+clockInTime[2])
			var clockOutTime = $('#clock-out-time').val().split(':');
			clockOutTime = (+clockOutTime[0]) * 60 * 60 + (+clockOutTime[1]) * 60 + (+clockOutTime[2])
			var resultTime,resultRate,resultPay

			//Calculate time diff
			resultTime = Math.floor(  (clockOutTime - clockInTime) / 3600 ) + ' hour(s) ' + Math.floor(  ((clockOutTime - clockInTime) % 3600) / 60 ) + ' minute(s) ' + Math.floor(  (((clockOutTime - clockInTime) % 3600) % 60)) + ' second(s) '
			$('#result-time').text(resultTime)

			//Calculate pay
			var timeblock = 60 / $('#result-rate').text()
			pay = $('#result-rate').text() / (60/timeblock) * Math.floor(  (clockOutTime - clockInTime) / 60 / timeblock )
			$('#result-pay').text(pay)

			//Show table
			$('#pay-table').removeClass('d-none')
		}
	})
</script>