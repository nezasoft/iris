<?php
include('../connect_db/connect_db.php');
//save input errors

$error = array();

$cat_name = sanitize_string($_POST['cat_name']);
$cat_desc = sanitize_string($_POST['cat_desc']);

	if(empty($cat_name)){
		$error = 'Category Name';	
	}
  if(empty($cat_desc)){
		$error = 'Category Description';	
	}
//check cat
$ch_cat = mysql_num_rows(mysql_query("select mat_cat_name from materials_categories where mat_cat_name='$cat_name'  limit 1"));

//echo  $store_id;
	if($ch_cat==1){
		$error ='There\'s already an existing category in the store with the name';
		
	}
	
	//check for errors
	
	if(empty($error)){
		//save 
		$save=mysql_query("insert into materials_categories(mat_cat_name,mat_cat_desc)values('$cat_name','$cat_desc')");
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