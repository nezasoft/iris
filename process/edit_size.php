<?php
include('../connect_db/connect_db.php');
//save input errors

$error = array();

$size_name = sanitize_string($_POST['size_name']);
$size_id = sanitize_string($_POST['size_id']);

	if(empty($size_name)){
		$error = 'Size Name';	
	}	
	//check for errors
	
	if(empty($error)){
		//save 
		$save=mysql_query("update sizes set size_name='$size_name' where size_id='$size_id'");
		//if success
		if($save){
			echo '<br/><span class="success">Record Updated!</span><br/>';
		}else{
			echo '<br/><span class="error">Error Updating Record! '.mysql_error().'</span><br/>';
			
		}
		
	}else{
		
		//display error message
		
		echo '<br/><span class="error">'.$error.'</span></br/>';
	}





?>