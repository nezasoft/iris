<?php
include('../connect_db/connect_db.php');
//save input errors

$error = array();

$brand_name = sanitize_string($_POST['brand_name']);


	if(empty($brand_name)){
		$error = 'Brand Name';	
	}
  
//check brand
$ch_cat = mysql_num_rows(mysql_query("select brand_name from brands where brand_name='$brand_name'  limit 1"));

//echo  $store_id;
	if($ch_cat==1){
		$error ='There\'s already an existing brand';
		
	}
	
	//check for errors
	
	if(empty($error)){
		//save 
		$save=mysql_query("insert into brands(brand_name)values('$brand_name')");
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