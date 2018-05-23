<div class="container">
	<div class="text-center p-4" style="height: 190px;">
		<img src="img/logo.jpg" style="height: 165px">
		<h3>Cempakawan</h3>
		<div class="mt-4 mb-0 row">
			<div class="col">
				<h6>Scan Your Thumb</h6>
			</div>
		</div>
		<div class="row mt-0">
			<div class="col">
				<div style="border: 3px pink solid; height: 190px; width: 160px; margin: 40px auto; box-shadow: 0 0 30px red"></div>
				<p class="small">Time: <span id="time"></span></p>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	var t = new Date
	$('#time').text(t)

	setInterval(function(){
		var t = new Date
		$('#time').text(t)
	},1000)
</script>