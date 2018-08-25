<main class="m-2">
	<h2>Payment to Tutor</h2>
	<div class="m-4">
		<form action="controller-pay-tutor.php" method="post">
			<div class="row">
				<div class="col-md-4">
					<label for="">To</label>
				</div>
				<div class="col-md-8">
					<select id="tutor" name="tutor" class="form-control select2" required data-placeholder="Please select...">
						<option disabled selected>Select...</option>
						<?php 
							$sql = "SELECT *,(SELECT (sum(credit)-sum(debit)) FROM transactions WHERE type = 'Tutor' AND subaccount = tutors.id) AS due FROM tutors ORDER BY name";
							$run = $conn->query($sql);
							while ($row = $run->fetch_assoc()) { ?>
								<option value="<?php echo $row['id'] ?>"><?php echo $row['name'] ?> (RM<?php if($row['due'] == NULL){echo "0";}else{echo($row['due']);} ?>)</option>
						<?php } ?>
					</select>
				</div>
			</div>
			<div class="row mb-1">
				<div class="col-md-4">
					<label for="">Amount</label>
				</div>
				<div class="col-md-8">
					<input class="form-control" type="number" name="amount" min="0" step="0.01">
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<label for="">Paid via</label>
				</div>
				<div class="col-md-8">
					<select id="paid-via" name="paid-via" class="form-control select2" required>
						<option disabled selected>Select...</option>
						<?php 
							$sql = "SELECT * FROM cash_accounts";
							$run = $conn->query($sql);
							while ($row = $run->fetch_assoc()) { ?>
								<option value="<?php echo $row['id'] ?>"><?php echo $row['account_name'] ?></option>
						<?php } ?>
					</select>
				</div>
			</div>
			<button type="submit" class="btn btn-primary mt-4">Submit</button>
		</form>
	</div>
</main>