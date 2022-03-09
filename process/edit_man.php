<?php
include('../connect_db/connect_db.php');
//save input errors

$error = array();

$man_name = sanitize_string($_POST['man_name']);
$man_id = sanitize_string($_POST['man_id']);

	if(empty($man_name)){
		$error = 'Manufacturer\'s Name';	
	}	
	//check for errors
	
	if(empty($error)){
		//save 
		$save=mysql_query("update manufactures set man_name='$man_name' where man_id='$man_id'");
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