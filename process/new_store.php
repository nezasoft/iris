<?php
include('../connect_db/connect_db.php');
//save input errors

$error = array();

$site_name = sanitize_string($_POST['site_name']);
$store_name = sanitize_string($_POST['store_name']);
$store_desc = sanitize_string($_POST['store_desc']);

	if(empty($store_name)){
		$error = 'Store Name';	
	}
  if(empty($site_name)){
		$error = 'Site Name';	
	}
//check store
$ch_store = mysql_num_rows(mysql_query("select store_name from stores where store_name ='$store_name' and site_id='$site_name' limit 1"));

	if($ch_store==1){
		$error ='There\'s already an existing store with the name';
		
	}
	
	//check for errors
	
	if(empty($error)){
		//save 
		$save=mysql_query("insert into stores (store_name,site_id,store_desc)
		values('$store_name','$site_name','$store_desc')");
		//if success
		if($save){
			echo '<br/><span class="success">Record Saved!</span><br/>';
		}else{
			echo '<br/><span class="error">Error Saving! '.mysql_error().'</span><br/>';
			
		}
		
	}else{
		
		//display error message
		
		echo '<br/><span class="error">'.$error.'</span></br/>';
	}





?>