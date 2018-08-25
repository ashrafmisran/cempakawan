<?php
	class Anchor{

		const defaultClass = 'btn';

		var $href;
		var $class;
		var $target;
		var $label = 'Default';
		var $icon = 'fas';

		function __construct(){
			$this->class = $this::defaultClass;
		}

		function sethyperlink($link){
			$this->href = $link;
		}

		function setclass($arrayName){
			$this->class = $this::defaultClass;
			$add = implode(' ', $arrayName);
			$this->class .= ' '.$add;
		}

		function settarget($type){
			$this->target = $type;
		}

		function setlabel($label){
			$this->label = $label;
		}

		function seticon($icon){
			$this->icon .= ' fa-'.$icon;
		}

		function gethyperlink(){
			return $this->href;
		}

		function getclass(){
			return $this->class;
		}

		function gettarget(){
			return $this->target;
		}

		function getlabel(){
			return $this->label;
		}

		function geticon(){
			if($this->icon !='fas'){
				return "<i class='".$this->icon."'></i>";
			}
		}

		function show(){
			echo "<a href='".$this->gethyperlink()."' class='".$this->getclass()."' target='".$this->gettarget()."'>".$this->geticon()." ".$this->getlabel()."</a>";
		}
	}


