<?php
include('../connect_db/connect_db.php');
//save input errors

$error = array();

$pack_name = sanitize_string($_POST['pack_name']);
$psize = sanitize_string($_POST['psize']);
$pack_id = sanitize_string($_POST['pack_id']);
	if(empty($pack_name)){
		$error = 'Package Name';	
	}
  if(empty($psize)){
		$error = 'Package Size';	
  }

	//check for errors
		
	if(empty($error)){
		//save 
		$save=mysql_query("
		update packages set pack_name='$pack_name',pack_size='$psize' where pack_id='$pack_id'");
		//if success
		if($save){
			echo '<br/><span class="success">Record Updated!</span><br/>';
		}else{
			echo '<br/><span class="error">Error Updating! '.mysql_error().'</span><br/>';
			
		}
		
	}else{
		
		//display error message
		
		echo '<br/><span class="error">'.$error.'</span></br/>';
	}





?>