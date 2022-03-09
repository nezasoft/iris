<?php
include('../connect_db/connect_db.php');
//save input errors

$error = array();

$cat_name = sanitize_string($_POST['cat_name']);
$cat_desc = sanitize_string($_POST['cat_desc']);
$cat_id = sanitize_string($_POST['cat_id']);
	if(empty($cat_name)){
		$error = 'Category Name';	
	}
  if(empty($cat_desc)){
		$error = 'Category Description';	
	}	
	//check for errors
	
	if(empty($error)){
		//save 
		$save=mysql_query("
		update materials_categories set mat_cat_name='$cat_name',mat_cat_desc='$cat_desc' where mat_cat_id='$cat_id'");
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