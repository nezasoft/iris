<?php
include('../connect_db/connect_db.php');
//save input errors
$error = array();

$site_name = sanitize_string($_POST['site_name']);
$store_name = sanitize_string($_POST['store_name']);
$store_desc = sanitize_string($_POST['store_desc']);
$store_id = sanitize_string($_POST['store_id']);
	if(empty($store_name)){
		$error = 'Store Name';	
	}
  if(empty($site_name)){
		$error = 'Site Name';	
	}	
	//check for errors	
	if(empty($error)){
		//save 
		$save=mysql_query("update stores set store_name='$store_name', 
		site_id='$site_name',store_desc='$store_desc' where  store_id='$store_id'");
		//if success
		if($save){
			echo '<br/><span class="success">Record Updated!</span><br/>';
		}else{
			echo '<br/><span class="error">Error Updating Record '.mysql_error().'</span><br/>';			
		}		
	}else{		
		//display error message		
		echo '<br/><span class="error">'.$error.'</span></br/>';
	}
?>