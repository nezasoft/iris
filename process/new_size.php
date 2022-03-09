<?php
include('../connect_db/connect_db.php');
//save input errors

$error = array();

$size_name = sanitize_string($_POST['size_name']);


	if(empty($size_name)){
		$error = 'Size Name';	
	}
  
//check brand
$ch_cat = mysql_num_rows(mysql_query("select size_name from sizes where size_name='$size_name'  limit 1"));

//echo  $store_id;
	if($ch_cat==1){
		$error ='There\'s already an existing size';
		
	}
	
	//check for errors
	
	if(empty($error)){
		//save 
		$save=mysql_query("insert into sizes(size_name)values('$size_name')");
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