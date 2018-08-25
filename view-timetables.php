<main class="m-2">
	<h2>Timetable</h2>
	<div id="calendar"></div>
</main>

<script type="text/javascript">
	$(function() {
		var todayDate = moment().startOf('day');
		var YM = todayDate.format('YYYY-MM');
		var YESTERDAY = todayDate.clone().subtract(1, 'day').format('YYYY-MM-DD');
		var TODAY = todayDate.format('YYYY-MM-DD');
		var TOMORROW = todayDate.clone().add(1, 'day').format('YYYY-MM-DD');

		$('#calendar').fullCalendar({
			defaultView: 'agendaWeek'
		});
	})
</script>