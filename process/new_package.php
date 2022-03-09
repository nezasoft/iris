<?php
include('../connect_db/connect_db.php');
//save input errors

$error = array();

$pack_name = sanitize_string($_POST['pack_name']);
$psize = sanitize_string($_POST['psize']);

	if(empty($pack_name)){
		$error = 'Package Name';	
	}
  if(empty($psize)){
		$error = 'Package Size';	
	}
//check pack
$ch_pack = mysql_num_rows(mysql_query("select pack_name from packages where pack_name='$pack_name'  limit 1"));

//echo  $store_id;
	if($ch_pack==1){
		$error ='There\'s already an existing package type in the store with the name';
		
	}
	
	//check for errors
		
	if(empty($error)){
		//save 
		$save=mysql_query("insert into packages(pack_name,pack_size)values('$pack_name','$psize')");
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