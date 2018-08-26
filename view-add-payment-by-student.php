<main class="m-2">
	<h2><a href="branch-menu"><?php echo($_SESSION['branch']) ?></a> > Payment by Students</h2>
	<div class="m-4">
		<form action="controller-receive-payment.php" method="post">
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
					<label for="">From</label>
				</div>
				<div class="col-md-8">
					<select id="student" name="student" class="form-control select2" required data-placeholder="Please select...">
						<option disabled selected>Select...</option>
						<?php 
							$sql = "SELECT *, 
						(SELECT (sum(transactions.debit)-sum(transactions.credit)) FROM transactions WHERE account = 11 AND transactions.subaccount = students.id AND type = 'Student' ) AS debt,
						(SELECT (sum(transactions.credit)-sum(transactions.debit)) FROM transactions WHERE account = 6 AND transactions.subaccount = students.id AND type = 'Student' ) AS prepayment FROM students ORDER BY name";
							$run = $conn->query($sql);
							while ($row = $run->fetch_assoc()) { ?>
								<option value="<?php echo $row['id'] ?>"><?php echo $row['name'] ?> &lt;<?php echo $row['mykad']; ?>&gt; <?php echo $row['prepayment'] ?></option>
						<?php } ?>
					</select>
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