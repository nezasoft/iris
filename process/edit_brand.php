<?php
include('../connect_db/connect_db.php');
//save input errors

$error = array();

$brand_name = sanitize_string($_POST['brand_name']);
$brand_id = sanitize_string($_POST['brand_id']);

	if(empty($brand_name)){
		$error = 'Brand Name';	
	}	
	//check for errors
	
	if(empty($error)){
		//save 
		$save=mysql_query("update brands set brand_name='$brand_name' where brand_id='$brand_id'");
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