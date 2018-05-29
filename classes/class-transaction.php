<?php
	class Transaction{
		var $table = 'transactions';
		var $columns = '';
		var $values = '';

		function setcolumns($array){
			$this->columns = implode(',', $array);
		}

		function setvalues($array){
			$this->values = implode(',', $array);
		}

		function record($conn){
			$sql = "INSERT INTO $this->table ($this->columns) VALUES ($this->values)";
			$run = $conn->query($sql);
			if ($run != FALSE) {
				echo "Recorded succesfully".PHP_EOL;
			}else{
				echo "Failed".PHP_EOL;
			}
		}

		function delete($conn,$id){
			echo $sql = "DELETE FROM $this->table WHERE id = $id";
			//$run = $conn->query($sql);
			if ($run != FALSE) {
				echo "Deleted succesfully".PHP_EOL;
			}else{
				echo "Failed".PHP_EOL;
			}	
		}

	}

