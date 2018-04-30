<?php

	include_once 'connect.php';

	$type		=		$_GET['type'];
	$idea_id	=		$_GET['idea'];
	$user_id	=		1;

	if ($type == 'agree' || $type == 'disagree') {

		// Check if exist update, if not insert
		$sql = 'SELECT id FROM actions WHERE (action = "agree" OR action = "disagree") AND idea_id = '.$idea_id.' AND user_id = '.$user_id;
		$run = $conn->query($sql);
		$row = $run->fetch_assoc();
		if ( $row > 0 ) {
			$sql = 'UPDATE actions SET action = "'.$type.'" WHERE idea_id = '.$idea_id.' AND user_id ='.$user_id.' AND (action = "agree" OR action = "disagree")';
			$run = $conn->query($sql);
		}else{
			$sql = 'INSERT INTO actions (user_id,idea_id,action) VALUES ('.$user_id.','.$idea_id.',"'.$type.'")';
			$run = $conn->query($sql);
		}

	}elseif ($type == 'favorite') {
		
		//Check if favorited before, change to unfavorited
		$sql = 'SELECT id FROM actions WHERE action = "favorite" AND idea_id = '.$idea_id.' AND user_id = '.$user_id;
		$run = $conn->query($sql);
		$row = $run->fetch_assoc();
		if ( $row > 0 ) {
			// If found means favorited before, so should be delete
			$sql = 'DELETE FROM actions WHERE idea_id = '.$idea_id.' AND user_id = '.$user_id.' AND action = "favorite"';
			$run = $conn->query($sql);
		}else{
			// If not found means not favorited before
			$sql = 'INSERT INTO actions (user_id,idea_id,action) VALUES ('.$user_id.','.$idea_id.',"'.$type.'")';
			$run = $conn->query($sql);
		}

	}
	
	

?>