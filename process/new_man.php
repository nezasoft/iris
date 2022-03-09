<?php
include('../connect_db/connect_db.php');
//save input errors

$error = array();

$man_name = sanitize_string($_POST['man_name']);


	if(empty($man_name)){
		$error = 'Manufacturer\'s Name';	
	}
  
//check brand
$ch_cat = mysql_num_rows(mysql_query("select man_name from manufactures where man_name='$man_name'  limit 1"));

//echo  $store_id;
	if($ch_cat==1){
		$error ='There\'s already an existing manufacturer';
		
	}
	
	//check for errors
	
	if(empty($error)){
		//save 
		$save=mysql_query("insert into manufactures(man_name)values('$man_name')");
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