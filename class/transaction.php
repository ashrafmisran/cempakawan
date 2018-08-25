<?php
	class Transaction{

		var $table;
		var $items = array();

		function __construct(){
			$this->table = 'transactions';
		}

		function setvalues($array){
			foreach ($array as $key => $value) {
				array_push($this->items->key, $value);
			}
		}

		function get($item){
			return $this->item;
		}

	}